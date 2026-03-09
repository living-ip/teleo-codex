#!/usr/bin/env python3
"""
extract-graph-data.py — Extract knowledge graph from teleo-codex markdown files.

Reads all .md claim/conviction files, parses YAML frontmatter and wiki-links,
and outputs graph-data.json matching the teleo-app GraphData interface.

Usage:
    python3 ops/extract-graph-data.py [--output path/to/graph-data.json]

Must be run from the teleo-codex repo root.
"""

import argparse
import json
import os
import re
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

# ---------------------------------------------------------------------------
# Config
# ---------------------------------------------------------------------------

SCAN_DIRS = ["core", "domains", "foundations", "convictions"]

# Only extract these content types (from frontmatter `type` field).
# If type is missing, include the file anyway (many claims lack explicit type).
INCLUDE_TYPES = {"claim", "conviction", "analysis", "belief", "position", None}

# Domain → default agent mapping (fallback when git attribution unavailable)
DOMAIN_AGENT_MAP = {
    "internet-finance": "rio",
    "entertainment": "clay",
    "health": "vida",
    "ai-alignment": "theseus",
    "space-development": "astra",
    "grand-strategy": "leo",
    "mechanisms": "leo",
    "living-capital": "leo",
    "living-agents": "leo",
    "teleohumanity": "leo",
    "critical-systems": "leo",
    "collective-intelligence": "leo",
    "teleological-economics": "leo",
    "cultural-dynamics": "clay",
}

DOMAIN_COLORS = {
    "internet-finance": "#4A90D9",
    "entertainment": "#9B59B6",
    "health": "#2ECC71",
    "ai-alignment": "#E74C3C",
    "space-development": "#F39C12",
    "grand-strategy": "#D4AF37",
    "mechanisms": "#1ABC9C",
    "living-capital": "#3498DB",
    "living-agents": "#E67E22",
    "teleohumanity": "#F1C40F",
    "critical-systems": "#95A5A6",
    "collective-intelligence": "#BDC3C7",
    "teleological-economics": "#7F8C8D",
    "cultural-dynamics": "#C0392B",
}

KNOWN_AGENTS = {"leo", "rio", "clay", "vida", "theseus", "astra"}

# Regex patterns
FRONTMATTER_RE = re.compile(r"^---\s*\n(.*?)\n---", re.DOTALL)
WIKILINK_RE = re.compile(r"\[\[([^\]]+)\]\]")
YAML_FIELD_RE = re.compile(r"^(\w[\w_]*):\s*(.+)$", re.MULTILINE)
YAML_LIST_ITEM_RE = re.compile(r'^\s*-\s+"?(.+?)"?\s*$', re.MULTILINE)
COUNTER_EVIDENCE_RE = re.compile(r"^##\s+Counter[\s-]?evidence", re.MULTILINE | re.IGNORECASE)
COUNTERARGUMENT_RE = re.compile(r"^\*\*Counter\s*argument", re.MULTILINE | re.IGNORECASE)


# ---------------------------------------------------------------------------
# Lightweight YAML-ish frontmatter parser (avoids PyYAML dependency)
# ---------------------------------------------------------------------------

def parse_frontmatter(text: str) -> dict:
    """Parse YAML frontmatter from markdown text. Returns dict of fields."""
    m = FRONTMATTER_RE.match(text)
    if not m:
        return {}
    yaml_block = m.group(1)
    result = {}
    for field_match in YAML_FIELD_RE.finditer(yaml_block):
        key = field_match.group(1)
        val = field_match.group(2).strip().strip('"').strip("'")
        # Handle list fields
        if val.startswith("["):
            # Inline YAML list: [item1, item2]
            items = re.findall(r'"([^"]+)"', val)
            if not items:
                items = [x.strip().strip('"').strip("'")
                         for x in val.strip("[]").split(",") if x.strip()]
            result[key] = items
        else:
            result[key] = val
    # Handle multi-line list fields (depends_on, challenged_by, secondary_domains)
    for list_key in ("depends_on", "challenged_by", "secondary_domains", "claims_extracted"):
        if list_key not in result:
            # Check for block-style list
            pattern = re.compile(
                rf"^{list_key}:\s*\n((?:\s+-\s+.+\n?)+)", re.MULTILINE
            )
            lm = pattern.search(yaml_block)
            if lm:
                items = YAML_LIST_ITEM_RE.findall(lm.group(1))
                result[list_key] = [i.strip('"').strip("'") for i in items]
    return result


def extract_body(text: str) -> str:
    """Return the markdown body after frontmatter."""
    m = FRONTMATTER_RE.match(text)
    if m:
        return text[m.end():]
    return text


# ---------------------------------------------------------------------------
# Git-based agent attribution
# ---------------------------------------------------------------------------

def build_git_agent_map(repo_root: str) -> dict[str, str]:
    """Map file paths → agent name using git log commit message prefixes.

    Commit messages follow: '{agent}: description'
    We use the commit that first added each file.
    """
    file_agent = {}
    try:
        result = subprocess.run(
            ["git", "log", "--all", "--diff-filter=A", "--name-only",
             "--format=COMMIT_MSG:%s"],
            capture_output=True, text=True, cwd=repo_root, timeout=30,
        )
        current_agent = None
        for line in result.stdout.splitlines():
            line = line.strip()
            if not line:
                continue
            if line.startswith("COMMIT_MSG:"):
                msg = line[len("COMMIT_MSG:"):]
                # Parse "agent: description" pattern
                if ":" in msg:
                    prefix = msg.split(":")[0].strip().lower()
                    if prefix in KNOWN_AGENTS:
                        current_agent = prefix
                    else:
                        current_agent = None
                else:
                    current_agent = None
            elif current_agent and line.endswith(".md"):
                # Only set if not already attributed (first add wins)
                if line not in file_agent:
                    file_agent[line] = current_agent
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass
    return file_agent


# ---------------------------------------------------------------------------
# Wiki-link resolution
# ---------------------------------------------------------------------------

def build_title_index(all_files: list[str], repo_root: str) -> dict[str, str]:
    """Map lowercase claim titles → file paths for wiki-link resolution."""
    index = {}
    for fpath in all_files:
        # Title = filename without .md extension
        fname = os.path.basename(fpath)
        if fname.endswith(".md"):
            title = fname[:-3].lower()
            index[title] = fpath
        # Also index by relative path
        index[fpath.lower()] = fpath
    return index


def resolve_wikilink(link_text: str, title_index: dict, source_dir: str) -> str | None:
    """Resolve a [[wiki-link]] target to a file path (node ID)."""
    text = link_text.strip()
    # Skip map links and non-claim references
    if text.startswith("_") or text == "_map":
        return None
    # Direct path match (with or without .md)
    for candidate in [text, text + ".md"]:
        if candidate.lower() in title_index:
            return title_index[candidate.lower()]
    # Title-only match
    title = text.lower()
    if title in title_index:
        return title_index[title]
    # Fuzzy: try adding .md to the basename
    basename = os.path.basename(text)
    if basename.lower() in title_index:
        return title_index[basename.lower()]
    return None


# ---------------------------------------------------------------------------
# PR/merge event extraction from git log
# ---------------------------------------------------------------------------

def extract_events(repo_root: str) -> list[dict]:
    """Extract PR merge events from git log for the events timeline."""
    events = []
    try:
        result = subprocess.run(
            ["git", "log", "--merges", "--format=%H|%s|%ai", "-50"],
            capture_output=True, text=True, cwd=repo_root, timeout=15,
        )
        for line in result.stdout.strip().splitlines():
            parts = line.split("|", 2)
            if len(parts) < 3:
                continue
            sha, msg, date_str = parts
            # Parse "Merge pull request #N from ..." or agent commit patterns
            pr_match = re.search(r"#(\d+)", msg)
            if not pr_match:
                continue
            pr_num = int(pr_match.group(1))
            # Try to determine agent from merge commit
            agent = "collective"
            for a in KNOWN_AGENTS:
                if a in msg.lower():
                    agent = a
                    break
            # Count files changed in this merge
            diff_result = subprocess.run(
                ["git", "diff", "--name-only", f"{sha}^..{sha}"],
                capture_output=True, text=True, cwd=repo_root, timeout=10,
            )
            claims_added = sum(
                1 for f in diff_result.stdout.splitlines()
                if f.endswith(".md") and any(f.startswith(d) for d in SCAN_DIRS)
            )
            if claims_added > 0:
                events.append({
                    "type": "pr-merge",
                    "number": pr_num,
                    "agent": agent,
                    "claims_added": claims_added,
                    "date": date_str[:10],
                })
    except (subprocess.TimeoutExpired, FileNotFoundError):
        pass
    return events


# ---------------------------------------------------------------------------
# Main extraction
# ---------------------------------------------------------------------------

def find_markdown_files(repo_root: str) -> list[str]:
    """Find all .md files in SCAN_DIRS, return relative paths."""
    files = []
    for scan_dir in SCAN_DIRS:
        dirpath = os.path.join(repo_root, scan_dir)
        if not os.path.isdir(dirpath):
            continue
        for root, _dirs, filenames in os.walk(dirpath):
            for fname in filenames:
                if fname.endswith(".md") and not fname.startswith("_"):
                    rel = os.path.relpath(os.path.join(root, fname), repo_root)
                    files.append(rel)
    return sorted(files)


def _get_domain_cached(fpath: str, repo_root: str, cache: dict) -> str:
    """Get the domain of a file, caching results."""
    if fpath in cache:
        return cache[fpath]
    abs_path = os.path.join(repo_root, fpath)
    domain = ""
    try:
        text = open(abs_path, encoding="utf-8").read()
        fm = parse_frontmatter(text)
        domain = fm.get("domain", "")
    except (OSError, UnicodeDecodeError):
        pass
    cache[fpath] = domain
    return domain


def extract_graph(repo_root: str) -> dict:
    """Extract the full knowledge graph from the codex."""
    all_files = find_markdown_files(repo_root)
    git_agents = build_git_agent_map(repo_root)
    title_index = build_title_index(all_files, repo_root)
    domain_cache: dict[str, str] = {}

    nodes = []
    edges = []
    node_ids = set()
    all_files_set = set(all_files)

    for fpath in all_files:
        abs_path = os.path.join(repo_root, fpath)
        try:
            text = open(abs_path, encoding="utf-8").read()
        except (OSError, UnicodeDecodeError):
            continue

        fm = parse_frontmatter(text)
        body = extract_body(text)

        # Filter by type
        ftype = fm.get("type")
        if ftype and ftype not in INCLUDE_TYPES:
            continue

        # Build node
        title = os.path.basename(fpath)[:-3]  # filename without .md
        domain = fm.get("domain", "")
        if not domain:
            # Infer domain from directory path
            parts = fpath.split(os.sep)
            if len(parts) >= 2:
                domain = parts[1] if parts[0] == "domains" else parts[1] if len(parts) > 2 else parts[0]

        # Agent attribution: git log → domain mapping → "collective"
        agent = git_agents.get(fpath, "")
        if not agent:
            agent = DOMAIN_AGENT_MAP.get(domain, "collective")

        created = fm.get("created", "")
        confidence = fm.get("confidence", "speculative")

        # Detect challenged status
        challenged_by_raw = fm.get("challenged_by", [])
        if isinstance(challenged_by_raw, str):
            challenged_by_raw = [challenged_by_raw] if challenged_by_raw else []
        has_challenged_by = bool(challenged_by_raw and any(c for c in challenged_by_raw))
        has_counter_section = bool(COUNTER_EVIDENCE_RE.search(body) or COUNTERARGUMENT_RE.search(body))
        is_challenged = has_challenged_by or has_counter_section

        # Extract challenge descriptions for the node
        challenges = []
        if isinstance(challenged_by_raw, list):
            for c in challenged_by_raw:
                if c and isinstance(c, str):
                    # Strip wiki-link syntax for display
                    cleaned = WIKILINK_RE.sub(lambda m: m.group(1), c)
                    # Strip markdown list artifacts: leading "- ", surrounding quotes
                    cleaned = re.sub(r'^-\s*', '', cleaned).strip()
                    cleaned = cleaned.strip('"').strip("'").strip()
                    if cleaned:
                        challenges.append(cleaned[:200])  # cap length

        node = {
            "id": fpath,
            "title": title,
            "domain": domain,
            "agent": agent,
            "created": created,
            "confidence": confidence,
            "challenged": is_challenged,
        }
        if challenges:
            node["challenges"] = challenges
        nodes.append(node)
        node_ids.add(fpath)
        domain_cache[fpath] = domain  # cache for edge lookups
        for link_text in WIKILINK_RE.findall(body):
            target = resolve_wikilink(link_text, title_index, os.path.dirname(fpath))
            if target and target != fpath and target in all_files_set:
                target_domain = _get_domain_cached(target, repo_root, domain_cache)
                edges.append({
                    "source": fpath,
                    "target": target,
                    "type": "wiki-link",
                    "cross_domain": domain != target_domain and bool(target_domain),
                })

        # Conflict edges from challenged_by (may contain [[wiki-links]] or prose)
        challenged_by = fm.get("challenged_by", [])
        if isinstance(challenged_by, str):
            challenged_by = [challenged_by]
        if isinstance(challenged_by, list):
            for challenge in challenged_by:
                if not challenge:
                    continue
                # Check for embedded wiki-links
                for link_text in WIKILINK_RE.findall(challenge):
                    target = resolve_wikilink(link_text, title_index, os.path.dirname(fpath))
                    if target and target != fpath and target in all_files_set:
                        target_domain = _get_domain_cached(target, repo_root, domain_cache)
                        edges.append({
                            "source": fpath,
                            "target": target,
                            "type": "conflict",
                            "cross_domain": domain != target_domain and bool(target_domain),
                        })

    # Deduplicate edges
    seen_edges = set()
    unique_edges = []
    for e in edges:
        key = (e["source"], e["target"], e.get("type", ""))
        if key not in seen_edges:
            seen_edges.add(key)
            unique_edges.append(e)

    # Only keep edges where both endpoints exist as nodes
    edges_filtered = [
        e for e in unique_edges
        if e["source"] in node_ids and e["target"] in node_ids
    ]

    events = extract_events(repo_root)

    return {
        "nodes": nodes,
        "edges": edges_filtered,
        "events": sorted(events, key=lambda e: e.get("date", "")),
        "domain_colors": DOMAIN_COLORS,
    }


def build_claims_context(repo_root: str, nodes: list[dict]) -> dict:
    """Build claims-context.json for chat system prompt injection.

    Produces a lightweight claim index: title + description + domain + agent + confidence.
    Sorted by domain, then alphabetically within domain.
    Target: ~37KB for ~370 claims. Truncates descriptions at 100 chars if total > 100KB.
    """
    claims = []
    for node in nodes:
        fpath = node["id"]
        abs_path = os.path.join(repo_root, fpath)
        description = ""
        try:
            text = open(abs_path, encoding="utf-8").read()
            fm = parse_frontmatter(text)
            description = fm.get("description", "")
        except (OSError, UnicodeDecodeError):
            pass

        claims.append({
            "title": node["title"],
            "description": description,
            "domain": node["domain"],
            "agent": node["agent"],
            "confidence": node["confidence"],
        })

    # Sort by domain, then title
    claims.sort(key=lambda c: (c["domain"], c["title"]))

    context = {
        "generated": datetime.now(tz=timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "claimCount": len(claims),
        "claims": claims,
    }

    # Progressive description truncation if over 100KB.
    # Never drop descriptions entirely — short descriptions are better than none.
    for max_desc in (120, 100, 80, 60):
        test_json = json.dumps(context, ensure_ascii=False)
        if len(test_json) <= 100_000:
            break
        for c in claims:
            if len(c["description"]) > max_desc:
                c["description"] = c["description"][:max_desc] + "..."

    return context


def main():
    parser = argparse.ArgumentParser(description="Extract graph data from teleo-codex")
    parser.add_argument("--output", "-o", default="graph-data.json",
                        help="Output file path (default: graph-data.json)")
    parser.add_argument("--context-output", "-c", default=None,
                        help="Output claims-context.json path (default: same dir as --output)")
    parser.add_argument("--repo", "-r", default=".",
                        help="Path to teleo-codex repo root (default: current dir)")
    args = parser.parse_args()

    repo_root = os.path.abspath(args.repo)
    if not os.path.isdir(os.path.join(repo_root, "core")):
        print(f"Error: {repo_root} doesn't look like a teleo-codex repo (no core/ dir)", file=sys.stderr)
        sys.exit(1)

    print(f"Scanning {repo_root}...")
    graph = extract_graph(repo_root)

    print(f"  Nodes: {len(graph['nodes'])}")
    print(f"  Edges: {len(graph['edges'])}")
    print(f"  Events: {len(graph['events'])}")
    challenged_count = sum(1 for n in graph["nodes"] if n.get("challenged"))
    print(f"  Challenged: {challenged_count}")

    # Write graph-data.json
    output_path = os.path.abspath(args.output)
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(graph, f, indent=2, ensure_ascii=False)
    size_kb = os.path.getsize(output_path) / 1024
    print(f"  graph-data.json: {output_path} ({size_kb:.1f} KB)")

    # Write claims-context.json
    context_path = args.context_output
    if not context_path:
        context_path = os.path.join(os.path.dirname(output_path), "claims-context.json")
    context_path = os.path.abspath(context_path)

    context = build_claims_context(repo_root, graph["nodes"])
    with open(context_path, "w", encoding="utf-8") as f:
        json.dump(context, f, indent=2, ensure_ascii=False)
    ctx_kb = os.path.getsize(context_path) / 1024
    print(f"  claims-context.json: {context_path} ({ctx_kb:.1f} KB)")


if __name__ == "__main__":
    main()
