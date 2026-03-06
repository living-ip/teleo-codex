# GenAl is Foremost a Creative Tool - by Doug Shapiro

Saved from https://dougshapiro.substack.com/p/genai-is-foremost-a-creative-tool

All snapshots from host dougshapiro.substack.com

23 Apr 2025 18:08:30 UTC

GenAl is Foremost a Creative Tool
Concept Machines, Not Answer Machines

DOUG SHAPIRO
JUL 17, 2024

17
6
2
Share

*Image Description: A digital painting depicts a human conductor in a suit, facing away from the viewer, conducting an orchestra composed of robot musicians. The robots are silver and uniform in appearance, playing various instruments such as violins and cellos. Sheet music stands are visible in front of the robots, and the overall scene has a slightly surreal and futuristic feel.*

Midjourney, prompt: "a human conductor, wearing a suit, conducts an orchestra of robot musicians"

Turn and face the strange
-David Bowie, Changes

For the average techno-curious Joe, making sense of GenAI is almost impossible. It is highly technical. The pace of innovation-new research, startups, use cases and

https://archive.ph/aH30b

1/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

products-is relentless. Using it doesn't clear up much. Sometimes, it feels like magic, and others, it's a waste of time.

Most confusing, even Al experts can't agree on some of the most fundamental questions, like whether:

*   Al valuations are in a "bubble;"
*   the ongoing development of large language models (LLMs) puts us on a path to artificial general intelligence (AGI) or LLMs are just an “off ramp,” with fundamental constraints;
*   the benefits of scale will continue indefinitely or we'll get only “two more turns of the crank;"
*   it will replace jobs or just tasks;
*   consumers and enterprises are really using them or just trying them out;
*   value will flow to the closed-source frontier models (such as those from Google, OpenAI and Anthropic) or open-source models will commoditize the foundational model layer; and
*   it will or won't kill us all.

For many professional creatives, it is more than just confusing. It is emotional and personal. Many have a viscerally-negative reaction to anything “AI.” They may consider their art as an extension of themselves and the very idea that a computer can "make art" as offensive; fear that GenAI will threaten creative jobs; and/or believe that training models on artists' work without payment or attribution is theft.

GenAI raises real legal and ethical questions. But below I explain from a technological perspective why GenAI is foremost a creative tool.

Tl;dr:

*   Fundamentally, GenAI models are impenetrable-because they are based on sub-symbolic systems that humans can't easily understand or modify-and unpredictable-because their output is probabilistic. Their unpredictability is a feature, not a bug.
*   The cutting edge of research is focused on ways to improve their reliability, such as through increased scale (of compute and training sets); agentic workflows that spread tasks among many models; and augmenting or conditioning them with known information. But today, they are primarily concept machines, not answer machines.
*   As a result, they aren't currently well suited to many use cases, especially high-stakes environments that require definitive, precise answers that are costly to verify.
*   Instead, they are very well suited to the opposite: conceptual, low-stakes, iterative tasks where the quality of output is easily verifiable.
*   In other words, GenAI tools are great creative assistants. They dramatically speed the creative process by providing faster feedback; they make it possible to try out a wider breadth of ideas, including riskier ones; they help give shape to partially-formed concepts; and they increase the “surface area of luck."

https://archive.ph/aH30b

2/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

*   Creatives have a long history of rejecting new technologies as unnatural, threatening and unartistic that later become integral.
*   It isn't possible to stop technology, even if we wanted to. Legislating it, regulating it, shaming it or wishing it away probably won't work. GenAI is just another tool. Progressive creatives would be wise to learn how it might help their process.

Thanks for reading The Mediator by Doug
Shapiro! Subscribe for free to receive new posts
and support my work.

# Computers that Make Information

According to a recent presentation by Coatue, so far this year, two-thirds of the returns for the S&P 500 and 90% of the returns for the NASDAQ-100 is AI.

Figure 1. AI Represents 2/3 of the Stock Market Return YTD

*Image Description: A slide from a Coatue presentation titled "AI is the dominant driver of returns this year." The slide shows two pie charts, one for SPX Performance Attribution Year-To-Date and another for NASDAQ-100. The SPX chart indicates that AI represents 2/3 of the SPX returns, while the NASDAQ-100 chart shows that AI represents 90% of the returns. The slide also mentions NVIDIA and includes a note about the source of the presentation: Coatue presentation at East Meets West Conference, June 18, 2024.*

Source: Coatue presentation at East Meets West Conference, June 18, 2024.

Why is AI-and, in particular, GenAI-creating such a frenzy of investors flinging their money in its general direction? At the heart of it, GenAI is so exciting because it enables computers to make new information.

# Data vs. Information

Let's start with the distinction between data and information.

*   Data is the raw, unprocessed representation of some phenomenon.
*   Information is the interpretation of that data in a way that has meaning.

Think about it in terms of the famous Zen koan: "If a tree falls in the forest and there is no one there to hear it, does it make a sound?" This question is often held up as some mystery of the universe, but it's not. The answer is no. The falling tree generates sound waves, but it only becomes sound if someone or something receives those waves and interprets them as sound.

The sound waves are data; the sound is information.

https://archive.ph/aH30b

3/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

# New Information

For most of the last 100,000-200,000 years or so, making new information was solely the province of humans, who created it by applying their own context, knowledge, intuition, interpretation, analysis, experience and creativity.

Computers are great (and far better than we are) at storing, retrieving, processing and, if connected over networks, transmitting (digital) information. As computers became more sophisticated, they started to generate information in limited ways. Data mining enables computers to identify patterns and draw insights from large datasets in a way that humans can't, although it is a matter of debate whether these insights are new information or not. With the advent of artificial intelligence, and in particular machine learning, they gained the ability to extract a broader range of insights from existing information-like image recognition and natural language processing.

GenAI is a leap forward. It does not just enhance information or classify it, but recognizes patterns, rules and structures within (vast amounts of) structured and unstructured data and then combines it in new ways to generate genuinely novel information: prose, images, videos, songs and code that have never existed before.

GenAI doesn't just enhance or classify information, it combines it to create new information.

The scope of that new information is bounded only by a model's training set and the relationships it learns from it. It can be anything that is represented digitally, not just text, images, songs or code, but 3D assets, weather patterns, biological sequences (DNA or proteins), chemicals or multi-modal or anything else.

Just because GenAI makes new information doesn't make that information useful.

Just because GenAI makes new information, however, doesn't indicate whether-or in which circumstances this information is useful.

To create a framework for when it is and when it isn't, we have to understand a little more about how GenAI works, from first principles.

# Symbolic and Sub-symbolic

Most of what we talk about today as “AI” is sub-symbolic AI, but from the 1950s-1980s, Al research was dominated by symbolic AI. The simplistic difference between the two is that a human would understand the rules encoded in a symbolic Al system, but not in a sub-symbolic system.

The idea behind symbolic Al is that human cognition can be replicated by hard coding logical rules. For example, the first Al programs that played chess were symbolic systems that used explicit human-programmed algorithms (and a lot of brute force computation) to search for the best moves.

https://archive.ph/aH30b

4/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

Sub-symbolic Al emerged as an alternative approach in the 1980s. Sub-symbolic systems are especially good for tasks that people perform easily but can't explain well. Instead of using explicit symbols and rules, sub-symbolic Al relies on abstract mathematical representations of patterns that the system learns itself, through machine learning (ML). The best example is neural networks, which learn patterns within large datasets using a structure inspired by the brain. But, just like seeing all the neurons firing in someone's brain wouldn't give you any clue what she was thinking, seeing all the dimension values and attention weights in a neural network won't help you understand what it is doing.

Just like seeing all the neurons firing in someone's brain wouldn't give you any clue what she was thinking, seeing all the dimension values and attention weights in a neural network won't help you understand what it is doing.

The shift in prominence from symbolic to sub-symbolic AI began in the late 1980s, accelerated by the increasing availability of large datasets, advancements in computing power, and breakthroughs in ML algorithms. 1 Pretty much everything in the headlines today-ChatGPT, Sora, Claude, Mistral, Stable Diffusion, Perplexity, Suno, Runway, you name it-is sub-symbolic.

For our purposes, the key here is that, even to leading researchers, how these models work or why they do what they do is not entirely clear. LLMs, for instance, have some properties that have surprised researchers, like the potential for analogical reasoning.

Part of the reason that there is so much debate about the future of Al is that it is so hard to understand how these sub-symbolic systems work.

# Unpredictability is the Whole Point

With a grounding in why these systems are inherently opaque, let's walk through a very high level description of how GenAI works. (For more detail, see the Appendix of my last post.)

GenAI models (whether autoregressive models, general adversarial networks (GAN), diffusion models, etc.):

*   Are powered by neural networks that are fed vast (vast, vast) amounts of information through a labor and capital-intensive training process;
*   They represent that information mathematically;
*   They learn the patterns, rules and structures within it (sometimes informed by human feedback, sometimes not);
*   When fed a prompt, they analyze the prompt to understand it;
*   And finally, based on their understanding of the prompt and the patterns they have divined from their training, they generate an output probabilistically.

Perhaps the best way to conceptualize why GenAI is different is to compare GenAI with traditional software. A simple abstraction of most software is shown in Figure 2. The basic stack comprises a database, rules or logic, and an interface.

https://archive.ph/aH30b

5/12


# GenAl is Foremost a Creative Tool - by Doug Shapiro

_Image: A diagram titled "Figure 2. A Simple Software Stack" shows a stack of three boxes. The top box is labeled "Interface," the middle box is labeled "Logic," and the bottom box is labeled "Database."_

Traditional Software

Let's say you go to www.twitter.com to post a tweet. Through your browser, you will interact with client-side code (JavaScript, HTML and CSS) written by (human) front-end engineers, which will interact with server-side code (Python, Java, Ruby, etc.) written by (human) backend engineers, and during the process of you logging in and posting the tweet, it will periodically access and modify several types of databases (relational, search indexes, time series, in-memory, etc.), many of which are human-readable and interpretable.

A LLM

Now, let's compare this with a LLM request. You go to www.claude.ai to ask Claude a question. While the front-end interaction is similar, the back-end processing is fundamentally different. The "logic" for both understanding the prompt and generating output has been derived from the model's training data, not programmed by humans. Given the complexity of the model, it is, as mentioned before, very hard or impossible for humans to understand it. The "database" is the model itself, consisting of billions or trillions of parameters (vector dimensions, attention weights) that are also very difficult for humans to interpret or modify directly. The output is not a simple lookup from a database or calculation, but a probabilistic generation based on the model's learned patterns. The model may use stochastic sampling techniques or introduce random noise to ensure there is variability in output, even from identical prompts.

_Image: A diagram titled "Figure 3. Comparing Traditional Software with a LLM" shows a table comparing the two. The table has three rows: Interface, Logic, and Database. The columns are Traditional Software and GenAI (LLM). The Traditional Software column lists Desktop, Browser, App, API for Interface; Deterministic, Human-Programmed for Logic; and Human-Readable and Modifiable, Standard Formats (SQL, JSON, CSV) for Database. The GenAI (LLM) column lists Browser, App, API for Interface; Probabilistic, Stochastic, Machine-Learned and Human Uninterpretable for Logic; and Difficult to Interpret/Modify, Billions or Trillions of Parameters (Vector Dimensions, Attention Weights) for Database._

Source: Author.

[https://archive.ph/aH30b](https://archive.ph/aH30b)

6/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

These distinctions are shown in Figure 3. To summarize:

*   GenAI models are trained, not programmed
*   Their underlying logic and databases are neither easily understood nor modifiable by humans
*   Their output is probabilistic, not deterministic

The most important point here is the last one. GenAI models are probabilistic by design. The unpredictability of the output is the whole point!

Unpredictability is a feature, not a bug.

Concept Machines, Not Answer Machines

Relative to traditional software, GenAI models therefore have certain weaknesses and strengths. Weaknesses include:

*   Hallucinations. GenAI models sometimes generate output that is nonsensical or just factually wrong. That's because they rely on patterns, not a true understanding of the information, and simply produce the probabilistically best output. (They are “stochastic parrots,” as coined in a now-famous paper.)
*   Limited by the training set. They are only as good as the underlying training set. In the case of text, LLMs have been trained on a very large proportion of all scrapable text on the internet (ChatGPT 40 is reportedly trained on 10 trillion words). Other modalities have far more limited sets available, such as video.

_Image: A text box that reads "GenAI models are trained on human abstractions of the real world, not direct experience of the real world itself."_

*   Limited understanding of the physical world. Traditional software can be programmed with knowledge of physics and real world simulations. As mentioned, however, GenAI models are trained, not programmed. They are trained on human abstractions of the real world—text, images, audio, video, etc.-not the real world itself. It is currently a matter of debate whether any GenAI model can learn a comprehensive, general purpose “world engine” without a physical embodiment.

_Image: A text box that reads "GenAI models are trained on abstractions of the real world, not the real world itself."_

*   No emotion and taste. They can mimic emotion, but they obviously don't have emotions themselves.

[https://archive.ph/aH30b](https://archive.ph/aH30b)

7/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

*   Lack of transparency. As also mentioned, given their complexity, it is very hard or impossible for humans to audit or understand how these models generate their output.
*   Lack of precise control. If it is hard to understand the generation process, it follows that it is tough to precisely control the output.

Strengths include:

*   Conceptual understanding. They are great at understanding high level concepts and nuanced connections.
*   Novel connections and combinations. They can extract unexpected combinations from their training sets and, as a result, produce unexpected content and ideas.
*   Natural language. They can understand (or intuit) subtle nuances in human language.
*   Flexibility. They can handle a very wide range of tasks without needing to be explicitly programmed for each use case.

There are many research efforts underway to improve the accuracy and reliability of these models, like increasing the scale of training data and compute; agentic workflows that break up tasks among multiple models; and conditioning or augmenting them with external, current knowledge (such as Retrieval Augmented Generation or RAG).

But it is important to understand that they are fundamentally designed to be concept machines, not answer machines.

What Are They Good For?

It follows from the above that, at least right now, GenAI is well suited to some use cases and not others.

Here are the use cases for which they're (currently) not useful:

*   Those that require a definitive, precise answer.
*   Those that require real-time access to information.
*   Those that require an understanding of the physical world, including all its many edge cases.
*   Those that require empathy and a sophisticated understanding of human nature.
*   High-stakes environments in which the output is hard or time-consuming for humans to verify.

Here are the use cases for which they are useful:

*   Natural language interactions.
*   Those that benefit from a degree of randomness.
*   Those for which many iterations, with human feedback at each step, are preferable to one right answer.
*   Those that benefit from conceptual understanding.

[https://archive.ph/aH30b](https://archive.ph/aH30b)

8/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

GenAI is great for conceptual, low-stakes, iterative tasks where the quality of the output is easy and cheap to verify.

There are applications in any field:

If you run a consumer-facing business, they are great “level 1” customer service agents.

If you're a lawyer, they're great for summarizing documents, combing through data, finding relevant cases or flagging problems in a contract, but you wouldn't want them to write your legal brief and you'd certainly want to double check all their citations.

If you're a financial analyst, they're great for interrogating quarterly earnings transcripts and financial filings, but you wouldn't want them to build your model without rigorous verification of the inputs.

If you're a medical professional, you might use it to summarize journal articles, but you sure want to check its diagnosis.

If you're a software engineer, they're helpful for generating code—and it's easy to verify-but they might not produce the most elegant version, be much help debugging or handle very complex structures or logic.

Ideally Suited to the Creative Process

I understand why the notion of GenAI making, or even contributing, to art is such a controversial idea and sometimes generates such a viscerally negative reaction. Many artists believe that the concept demeans and belittles what they do and, in some cases, their very identity. There is also legitimate concern about the way many Al models have been trained and whether they are “stealing” artists' work without payment or even attribution.

I firmly believe that, to quote Rick Rubin, "...the attraction of art is the humanity held in it." To me, the difference between "art" and "content" is that only a human can make art.

Nevertheless, as described above, GenAI is great at conceptual, low-stakes, iterative tasks where the quality of the output is easy and quick to verify.

In other words, they are fantastic creative assistants. They enable artists to create many, many more iterations than they otherwise could, much faster. This speeds the creative process by providing faster feedback; they make it possible to try out a wider breadth of ideas, including riskier ones; they help give shape to partially-formed ideas; and they increase the “surface area of luck” and the likelihood of serendipity.

GenAI is perfectly suited to be a creative assistant.

Runway founder Cristobal Valenzuela recently posted a tweet that captures this idea:

9/12

# GenAl is Foremost a Creative Tool - by Doug Shapiro

_Image: A screenshot of a tweet from Cristóbal Valenzuela (@c_valenzuelab). The tweet reads: "I've been watching too many people immerse themselves for hours using Gen-3, and there's this pattern that keeps popping up. It's like this: You start with some vague idea in your head. But as you play around, you end up in totally different places. It's weird - the twists and turns become more interesting than what you first thought of. It's not like you have a clear destination. You're just... going. And as you bump into new stuff - things the model mashes together in ways you didn't expect - you change course. You explore. It's like the model is saying, "Hey, what about this?" and you're like, "Huh, never thought of that." There's a buzz to it. A thrill in not knowing what's coming next. You're not trying to make some big, fancy project. You're just poking at your brain, seeing what comes out. It's like stretching a muscle you didn't know you had. It's a new form of creative dialogue. The rapid-fire generation speed allows for a true back-and-forth, a conversation in visual language. You prompt, the model responds, sparking new ideas in your mind, leading to new prompts, and on it goes in a virtuous cycle. It's a form of "generative daydreaming." The boundaries between your initial concept and the model's output blur into one stream of continual discovery. You're not crafting a singular, static piece of media, but rather exploring possibilities. And it's joyful and fun. This process taps into a part of our brains that craves novelty and surprise. It's not about the pressure to produce a film or a masterpiece. It's about flexing our creative muscles simply for the joy of the exercise. Like going to a gym for the mind, each session with the model leaves you invigorated, your imagination stretched in ways you didn't expect. When the tools are swift enough, you enter a flow state, a creative dialogue. A form of play and discovery that's as rewarding as any final form. It's not about reaching a predetermined endpoint, it's more about reveling in the serendipitous exploration." The tweet was posted on July 3, 2024, and has 37.9K views._

Face the Strange

Here's another tweet, which went viral:

_Image: A screenshot of a tweet from Joanna Maciejewska-Snakebitten (@AuthorJMac). The tweet reads: "You know what the biggest problem with pushing all-things-Al is? Wrong direction. I want Al to do my laundry and dishes so that I can do art and writing, not for Al to do my art and writing so that I can do my laundry and dishes." The tweet was posted on March 29, 2024, and has 3M views._

[https://archive.ph/aH30b](https://archive.ph/aH30b)

Fortunately or not, GenAI is expressly good at helping with art and writing and, at least today, expressly bad at doing laundry and dishes.

There is a long history of creatives rejecting new technologies that later became integral: photography was thought to herald the end of painting, but instead birthed new forms of painting (impressionism, surrealism, etc.) and became an art form in its own right; digital photography was initially rejected as requiring less skill; musicians

10/12


# GenAI is Foremost a Creative Tool - by Doug Shapiro

hated synthesizers and, later, autotune; sampling was considered stealing and is now a fundamental technique in hip-hop and rap; animators rejected CGI; physical effects artists, stop motion animators and matte painters resisted the shift to VFX, etc.

But it isn't possible to stop technology, even if we wanted to. Legislating it, regulating it, shaming it or wishing it away probably won't work. GenAI is just another tool. Progressive creatives would be wise to learn how it might help their process.

1 A big turning point came from game playing. IBM's Deep Blue, which famously beat chess grandmaster Garry Kasparov in 1997, was a symbolic system. But DeepMind's AlphaGo, which in 2015 because the first Al to beat a human champion, was a hybrid symbolic/sub-symbolic system. The success of AlphaGo Zero, which in 2017 beat AlphaGo after only three days of self-training, marked an even further shift toward sub-symbolic AI.

# Subscribe to The Mediator
By Doug Shapiro

The Mediator is (mostly) about the long term structural changes in the media industry and the business, cultural, and societal implications of those shifts. I write it to get closer to the frontier.

By subscribing, I agree to Substack's [Terms of Use](https://substack.com/terms), and acknowledge its [Information Collection Notice](https://substack.com/privacy) and [Privacy Policy](https://substack.com/privacy).

*   17 Likes 2 Restacks

    *   17
    *   6
    *   2

*   [Previous](#)
*   [Next](#)

# Discussion about this post

*   Comments
*   Restacks

Write a comment...

Andrea Girolami Jul 17

❤Liked by Doug Shapiro

I will read the post as usual but first: we had the same idea for the a prompt! [https://open.substack.com/pub/scrollinginfinito/p/lintelligenza-artificiale-ha-bisogno?r=vt52&utm\_medium=ios](https://open.substack.com/pub/scrollinginfinito/p/lintelligenza-artificiale-ha-bisogno?r=vt52&utm_medium=ios)

*   LIKE (1)
*   REPLY
*   SHARE

1 reply by Doug Shapiro

11/12