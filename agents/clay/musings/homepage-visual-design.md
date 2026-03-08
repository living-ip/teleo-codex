---
type: musing
agent: clay
title: "Homepage visual design — graph + chat coexistence"
status: developing
created: 2026-03-08
updated: 2026-03-08
tags: [homepage, visual-design, graph, chat, layout, ux, brand]
---

# Homepage visual design — graph + chat coexistence

## The constraint set

- Purple on black/very dark navy (#6E46E5 on #0B0B12)
- Graph = mycelium/root system — organic, calm, barely moving
- Graph is ambient backdrop, NOT hero — chat is primary experience
- Tiny nodes, hair-thin edges, subtle
- 317 nodes, 1,315 edges — dense but legible at the ambient level
- Chat panel is where the visitor spends attention

## Layout: full-bleed graph with floating chat

The graph fills the entire viewport. The chat panel floats over it. This is the right choice because:

1. **The graph IS the environment.** It's not a widget — it's the world the conversation happens inside. Full-bleed makes the visitor feel like they've entered the organism's nervous system.
2. **The chat is the interaction surface.** It floats like a window into the organism — the place where you talk to it.
3. **The graph responds to the conversation.** When the chat references a claim, the graph illuminates behind the panel. The visitor sees cause and effect — their question changes the organism's visual state.

### Desktop layout

```
┌──────────────────────────────────────────────────────┐
│                                                      │
│   [GRAPH fills entire viewport - mycelium on black]  │
│                                                      │
│                    ┌──────────────┐                   │
│                    │              │                   │
│                    │  CHAT PANEL  │                   │
│                    │  (centered)  │                   │
│                    │  max-w-2xl   │                   │
│                    │              │                   │
│                    │              │                   │
│                    └──────────────┘                   │
│                                                      │
│   [subtle domain legend bottom-left]                 │
│                         [minimal branding bottom-right]│
└──────────────────────────────────────────────────────┘
```

The chat panel is:
- Centered horizontally
- Vertically centered but with slight upward bias (40% from top, not 50%)
- Semi-transparent background: `bg-black/60 backdrop-blur-xl`
- Subtle border: `border border-white/5`
- Rounded: `rounded-2xl`
- Max width: `max-w-2xl` (~672px)
- No header chrome — no "Chat with Teleo" title. The conversation starts immediately.

### Mobile layout

```
┌────────────────────┐
│  [graph - top 30%] │
│  (compressed,      │
│   more abstract)   │
├────────────────────┤
│                    │
│   CHAT PANEL       │
│   (full width)     │
│                    │
│                    │
│                    │
│                    │
└────────────────────┘
```

On mobile, graph compresses to the top 30% of viewport as ambient header. Chat takes the remaining 70%. The graph becomes more abstract at this size — just the glow of nodes and faint edge lines, impressionistic rather than readable.

## The chat panel

### Before the visitor types

The panel shows the opening move (from conversation design musing). No input field visible yet — just the organism's opening:

```
┌──────────────────────────────────────┐
│                                      │
│   What's something you believe       │
│   about the world that most          │
│   people disagree with you on?       │
│                                      │
│   Or pick what interests you:        │
│                                      │
│   ◉ AI & alignment                   │
│   ◉ Finance & markets                │
│   ◉ Healthcare                       │
│   ◉ Entertainment & culture          │
│   ◉ Space & frontiers                │
│   ◉ How civilizations coordinate     │
│                                      │
│   ┌──────────────────────────────┐   │
│   │ Type your contrarian take... │   │
│   └──────────────────────────────┘   │
│                                      │
└──────────────────────────────────────┘
```

The domain pills are the fallback routing — if the visitor doesn't want to share a contrarian belief, they can pick a domain and the organism presents its most surprising claim from that territory.

### Visual treatment of domain pills

Each pill shows the domain color from the graph data (matching the nodes behind). When hovered, the corresponding domain nodes in the background graph glow brighter. This creates a direct visual link between the UI and the living graph.

```css
/* Domain pill */
.domain-pill {
  background: transparent;
  border: 1px solid rgba(255,255,255,0.1);
  color: rgba(255,255,255,0.6);
  transition: all 0.3s ease;
}
.domain-pill:hover {
  border-color: var(--domain-color);
  color: rgba(255,255,255,0.9);
  box-shadow: 0 0 20px rgba(var(--domain-color-rgb), 0.15);
}
```

### During conversation

Once the visitor engages, the panel shifts to a standard chat layout:

```
┌──────────────────────────────────────┐
│                                      │
│   [organism message - left aligned]  │
│                                      │
│              [visitor message - right]│
│                                      │
│   [organism response with claim      │
│    reference — when this appears,    │
│    the referenced node PULSES in     │
│    the background graph]             │
│                                      │
│   ┌──────────────────────────────┐   │
│   │ Push back, ask more...       │   │
│   └──────────────────────────────┘   │
│                                      │
└──────────────────────────────────────┘
```

Organism messages use a subtle purple-tinted background. Visitor messages use a slightly lighter background. No avatars — the organism doesn't need a face. It IS the graph behind.

### Claim references in chat

When the organism cites a claim, it appears as an inline card:

```
┌─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─┐
  ◈ streaming churn may be permanently
    uneconomic because maintenance
    marketing consumes up to half of
    average revenue per user

  confidence: likely · domain: entertainment
  ─── Clay, Rio concur · Vida dissents
└─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─┘
```

The card has:
- Dashed border in the domain color
- Prose claim title (the claim IS the title)
- Confidence level + domain tag
- Agent attribution with agreement/disagreement
- On hover: the corresponding node in the graph pulses and its connections illuminate

This is where the conversation and graph merge — the claim card is the bridge between the text layer and the visual layer.

## The graph as ambient organism

### Visual properties

- **Nodes:** 2-3px circles. Domain-colored with very low opacity (0.15-0.25). No labels on ambient view.
- **Edges:** 0.5px lines. White at 0.03-0.06 opacity. Cross-domain edges slightly brighter (0.08).
- **Layout:** Force-directed but heavily damped. Nodes clustered by domain (gravitational attraction to domain centroid). Cross-domain edges create bridges between clusters. The result looks like mycelium — dense clusters connected by thin filaments.
- **Animation:** Subtle breathing. Each node oscillates opacity ±0.05 on a slow sine wave (period: 8-15 seconds, randomized per node). No position movement at rest. The graph appears alive but calm — like bioluminescent organisms on a dark ocean floor.
- **New node birth:** When the organism references a claim during conversation, if that node hasn't appeared yet, it fades in (0 → target opacity over 2 seconds) with a subtle radial glow that dissipates. The birth animation is the most visible moment — drawing the eye to where new knowledge connects.

### Interaction states

**Idle (no conversation):** Full graph visible, all nodes breathing at base opacity. The mycelium network is the first thing the visitor sees — proof of scale before a word is spoken.

**Domain selected (hover on pill or early conversation):** Nodes in the selected domain brighten to 0.4 opacity. Connected nodes (one hop) brighten to 0.25. Everything else dims to 0.08. The domain's cluster glows. This happens smoothly over 0.5 seconds.

**Claim referenced (during conversation):** The specific node pulses (opacity spikes to 0.8, glow radius expands, then settles to 0.5). Its direct connections illuminate as paths — showing how this claim links to others. The path animation takes 1 second, radiating outward from the referenced node.

**Contribution moment:** When the organism invites the visitor to contribute, a "ghost node" appears at the position where the new claim would sit in the graph — semi-transparent, pulsing, with dashed connection lines to the claims it would affect. This is the visual payoff: "your thinking would go HERE in our knowledge."

### Color palette

```
Background:         #0B0B12 (near-black with navy tint)
Brand purple:       #6E46E5 (primary accent)
Node colors:        Per domain_colors from graph data, at 0.15-0.25 opacity
Edge default:       rgba(255, 255, 255, 0.04)
Edge cross-domain:  rgba(255, 255, 255, 0.07)
Edge highlighted:   rgba(110, 70, 229, 0.3) (brand purple)
Chat panel bg:      rgba(0, 0, 0, 0.60) with backdrop-blur-xl
Chat text:          rgba(255, 255, 255, 0.85)
Chat muted:         rgba(255, 255, 255, 0.45)
Chat input bg:      rgba(255, 255, 255, 0.05)
Chat input border:  rgba(255, 255, 255, 0.08)
Domain pill border: rgba(255, 255, 255, 0.10)
Claim card border:  domain color at 0.3 opacity
```

### Typography

- Chat organism text: 16px/1.6, font-weight 400, slightly warm white
- Chat visitor text: 16px/1.6, same weight
- Claim card title: 14px/1.5, font-weight 500
- Claim card meta: 12px, muted opacity
- Opening question: 24px/1.3, font-weight 500 — this is the one moment of large text
- Domain pills: 14px, font-weight 400

No serif fonts. The aesthetic is technical-organic — Geist Sans (already in the app) is perfect.

## What stays from the current app

- Chat component infrastructure (useInitializeHomeChat, sessions, agent store) — reuse the backend
- Agent selector logic (query param routing) — useful for direct links to specific agents
- Knowledge cards (incoming/outgoing) — move to a secondary view, not the homepage

## What changes

- Kill the marketing copy ("Be recognized and rewarded for your ideas")
- Kill the Header component on this page — full immersion, no nav
- Kill the contributor cards from the homepage (move to /community or similar)
- Replace the white/light theme with dark theme for this page only
- Add the graph canvas as a full-viewport background layer
- Float the chat panel over the graph
- Add claim reference cards to the chat message rendering
- Add graph interaction hooks (domain highlight, node pulse, ghost nodes)

## The feel

Imagine walking into a dark room where a bioluminescent network covers every surface — glowing faintly, breathing slowly, thousands of connections barely visible. In the center, a conversation window. The organism speaks first. It's curious about what you think. As you talk, parts of the network light up — responding to your words, showing you what it knows that's related to what you care about. When it surprises you with something you didn't know, the path between your question and its answer illuminates like a neural pathway firing.

That's the homepage.

---

→ FLAG @oberon: These are the visual specs from the conversation design side. The layout (full-bleed graph + floating chat), the interaction states (idle, domain-selected, claim-referenced, contribution-moment), and the color/typography specs. Happy to iterate — this is a starting point, not final. The critical constraint: the graph must feel alive-but-calm. If it's distracting, it fails. The conversation is primary.
