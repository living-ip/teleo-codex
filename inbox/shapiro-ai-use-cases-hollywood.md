# 4/23/25, 6:56 PM Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

archive.today Saved from https://dougshapiro.substack.com/p/ai-use-cases-in-hollywood
search
no other snapshots from this url
webpage capture
All snapshots from host dougshapiro.substack.com
Webpage
Screenshot

## Al Use Cases in Hollywood

What's Possible Now and Where It's Going

DOUG SHAPIRO
SEP 18, 2023

4
1
Share

[Note that this essay was originally published on Medium]

<!-- Image: A diagram illustrating AI use cases in Hollywood across different stages of production. -->
The diagram is divided into two rows, "Current" and "Future," and four columns representing stages of production: "Development," "Pre-Production," "Production," and "Post-Production." Each cell contains bullet points describing specific AI applications.

**Current:**
*   **Development:** Chatbots for ideation/story co-development, T2I* generators for rapid development of storyboards/animatics, T2V** with custom trained models for first-pass story development.
*   **Pre-Production:** Text-to-3D/NeRF for faster Previs, Automated storyboards.
*   **Production:** T2V** generators for B-roll, Elimination of soundstages/locations, Elimination of costumes/makeup, "Acting doubles", Real-time content creation.
*   **Post-Production:** T2V** for trailers/title sequences, Al-assisted edit, Al-assisted VFX, Automated localization, First-pass editing, VFX co-pilot.

**Future:**
*   Cinematic-quality T2V** generation, with far more creator control.

*T2I (text-to-image) generators, like Midjourney and DALL-E
**T2V (text/image/video-to-video) generators, like RunwayML Gen-2, Pika Labs and Kaiber

Share

Over the last nine months, I've been writing about why several new technologies, especially AI (including generative AI), are poised to disrupt Hollywood in coming years by lowering the barriers to high quality video content creation. (See The Four Horsemen of the TV Apocalypse and Forget Peak TV, Here Comes Infinite TV). The one-sentence summary: the last decade in film and TV was defined by the disruption of content distribution and the next decade will be defined by the disruption of content creation.

That's pithy and all, but it also raises a lot of questions too. In a recent post, for instance, I addressed how fast and to what extent Hollywood may ultimately be disrupted (How Will the “Disruption” of Hollywood Play Out?)

In this post, I try to answer a different set of questions: How exactly will AI lower entry barriers in content creation? Which parts of the production process will be most affected? Which use cases are the most promising? When will these savings be available? What's feasible today vs. what's coming next? And even if these technologies lower entry barriers, could established studios-aka Hollywood-benefit too?

https://archive.ph/WE4AQ

1/22

# 4/23/25, 6:56 PM Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

Tl;dr:

*   Today, production costs for the median big-budget film release run about $200 million. The most expensive TV shows easily top $10 million per episode. About 15-20% of these costs are “above the line" (ATL) talent, 50% is "below the line" (BTL) crew and production costs, ~25-30% is post production (mostly VFX) and the remainder is other. All in, roughly 2/3 of these costs are labor.

*   It is a sensitive topic for good reason, but over time GenAI-enabled tools promise (and threaten) to replace large proportions of this labor.

*   Practical use cases are already cropping up across all stages of the TV and film production process. These include story development, storyboarding/animatics, pre-visualization (or “previs”), B-roll, editing, visual effects (VFX) and localization services.

*   How far will this all go? Ultimately, the prevalence of GenAI in the production process will be gated by consumer acceptance, not technology.

*   Even making the relatively conservative assumption that TV and film projects will always require both human creative teams and human actors, future potential use cases include: the elimination of soundstages and locations, the elimination of costumes and makeup, first pass editing and VFX co-pilots, “acting doubles" that stand in for talent, increasingly cinematic text-to-video generators that offer higher resolution and give creatives much more control, custom-trained video generator models and new forms of content.

*   All of this will likely have a profound effect on production costs. Over time, the cost curve for all non-ATL costs may converge with the cost curve of compute.

*   For Hollywood, like any incumbent, lower entry barriers are bad. The potential for lower production costs is a silver lining, but it presents a daunting change management challenge. Studios should start either by experimenting with non-core processes or developing skunkworks studios to develop “AI-first” content from scratch.

Thanks for reading The Mediator! Subscribe for free to receive new posts and support my work.

Figure 1. Almost No One Was Using the Term Generative AI a Year Ago

https://archive.ph/WE4AQ

2/22

# 4/23/25, 6:56 PM Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

<!-- Image: A line graph showing the interest level in "Generative AI" over time. -->
The graph shows a dramatic increase in interest starting around late 2022 and continuing into 2023. The x-axis represents time, ranging from 9/16/2018 to 9/16/2022, with a significant spike occurring after that date. The y-axis represents the interest level, ranging from 0 to 100. The source is not specified.

## "Generative Al" Interest Level

Source:

Al vs GenAl in Hollywood

Al has
50
automa
40
Sony us
30
analyze
20
series o
10
0
9/16/2018
automa
9/16/2019
9/16/2020
9/16/2021 9/16/2022
rrect.
to
es a
d

automating the creation of trailers.

Most of these use cases are enabled by “discriminative” Al models that learn the relationship between data and a label. When presented with new data, they use this knowledge to label it. The canonical example is a model that is trained on pictures of cats and then can recognize pictures of cats.

By contrast, generative AI, or GenAI, is relatively new. As shown in Figure 1, almost no one reading this even heard of the term a year ago. Unlike discriminative models, "generative" models learn patterns in unstructured data and, when presented with new data, they use that knowledge to generate new data-text, audio, pixels (that create images or video) or voxels (to create 3D images). For instance, the transformer models that underlie GPT 3.5, 4.0.. etc., assign sets of numerical values to each word (aka, vectors) and this set of values describes the relationship between words. (Similar or related words will have similar vectors.) When ChatGPT responds to a prompt, these relationships enable it to probabilistically predict the next word in its response. Once enough words are strung together, it results in a paragraph that has never been written before.

The concept of generating new data subject to a set of constraints—GenAI—has potential applications along the entire production process.

This concept-generating new text, images, audio or video in response to a set of constraints (such as a prompt)—or GenAI-has applications across the entire film and TV production process.

But before getting into specifics, including the implications for production costs, we need to take a detour to understand how the production process works today and how Hollywood spends money.

## You Spent $200 Million on What Exactly?

There is no area of popular culture in which budgets are publicized and scrutinized more so than in movies. When a big release comes out, usually a budget number gets thrown around too. To take two recent examples, Avatar 2: The Way of Water, probably the most expensive film ever made, reportedly racked up production costs of more

https://archive.ph/WE4AQ

3/22

# 4/23/25, 6:56 PM Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

than $400 million, while the "more modest" Barbie supposedly ran up $145 million in costs.

Wikipedia often includes budget estimates for movies, as does film industry website The Numbers. (For what it's worth, production costs are those required to make the finished product. They don't include what's called “prints and advertising," or P&A, which is the cost of marketing the film and creating the physical prints used in movie theaters, which can easily equal or exceed the production cost.) As the budgets for TV series have swelled in recent years, it's also become more common to encounter estimated TV budgets. For instance, the final season of Game of Thrones reportedly cost $15 million per episode and The Lord of the Rings supposedly cost more than $25 million per episode.

Usually, these film and TV budget estimates are rough (and uncorroborated by the studio) and, as a generality, probably understate true production costs. But, taking them at face value, where does $50 million (for a mid-budget drama like Captain Phillips), $100 million (for John Wick: Chapter 4). or $200 million (for The Flash) go? To answer, it's helpful to lay out both a simplified view of the production process and a high-level view of the different categories of spend.

## A Simplified Production Process

I'll stick with film, since it's a discrete project, but the general concepts also hold for TV. The traditional workflow of producing a film proceeds in four relatively sequential stages:

*   Development. At this point the project is a mere twinkle in someone's eye. The director/producer/writer/studio development team sketches out the concept (a synopsis), then a longer treatment and then a draft script. Key talent (directors and actors) agrees to be involved (or “attached”). The development team and/or producer will have a very (very) high-level estimate of budget at this stage too. During development, a producer or studio may also "option" the project (which means purchasing an option to acquire the rights). This period could take months or years (aka "development hell").

*   Pre-Production. Pre-production proceeds once the project has been "greenlit" and the financing is in place. This is when real money starts to be spent. This phase includes formal casting and contracting of the key talent (also known as "above the line,” described below), the crew (“below the line"), finalizing the script, creating storyboards or animatics (an animated storyboard), sometimes pre-visualization or "previs" (the development of detailed 3D representations of shots) and designing and constructing sets, scale models and costumes. This is also when the production and finance teams develop detailed shooting schedules and budgets. The goal during this phase is to do whatever possible to minimize shoot time.

*   Production (or "Principal Photography”). As it sounds, this is when the film is shot. This phase will also include mechanical or "practical" special effects (SFX), such as controlled explosions, car chases or the use of models.

*   Post Production. This includes visual effects (VFX), like the development of computer generated imagery (CGI) that is then composited onto live action footage. It also includes re-shoots, if needed. It entails editing, post production

https://archive.ph/WE4AQ

4/22

# 4/23/25, 6:56 PM Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

sound (sound effects), titles and finally "rendering" all these elements (live action, CGI, models, sound, transitions, text/titles, etc.) into the final frames ("final pixel").

## A High Level Budget

Line item film budgets can run 100 pages or more, spelling out every expense. Most include something called a “topsheet,” a summary which breaks down expenses in a few categories. These categories don't strictly correspond to the stages of the production process above:

*   "Above the line" (ATL) is all the talent that is, well, considered worthy of being "above the line.” It includes producers, directors, writers, cast and often stunt people and their travel and living expenses (transportation, housing, food, security). It also includes any rights that were acquired for the production.

*   "Below the line” (BTL) includes everyone else involved in the production. This means: production staff (production managers and assistant directors); casting; "camera" (cinematographer, assistant camera personnel, rental of the equipment itself); set design and construction (also called “art”); SFX (again, as opposed to the VFX that occurs in post production); location expenses; electric and lighting; sound; wardrobe; hair and makeup; grip and set operations (the people who set up the equipment that support the camera and lighting); and travel and living expenses for BTL personnel.

*   Post production includes all the costs for the post production activities described above.

*   Other is a catch-all category for insurance, on-set publicity, behind-the-scenes footage, maybe financing costs and other administrative costs.

Film industry analyst Stephen Follows has a great article in which he breaks down the costs for a variety of production budgets. However, for our purposes, I'll focus on the largest bucket of spend, blockbuster films. As shown in Figure 2 (also from Follows), the median budget on these films is currently around $200 million.

Figure 2. The Median Blockbuster Film Budget is $200 Million

<!-- Image: A line graph showing the media production budget for films with budgets greater than $100 million. -->
The graph shows the media production budget for films with budgets greater than $100 million over time. The x-axis represents the year, ranging from 2000 to 2022. The y-axis represents the budget in millions of dollars. The budget generally increases over time, with some fluctuations.

$ in Millions
$250
$200
$150
$100
$50
$0

Source: Stephen Follows.

Media Production Budget, Films >
$100mm Budget

https://archive.ph/WE4AQ

5/22


# 4/23/25, 6:56 PM
Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

Based on my discussions with a few producers (and roughly consistent with Follows' estimates), the distribution of budgets falls about as shown in Figure 3. About half of the budget is spent on below the line functions, 25-30% is spent on post production (most of which is VFX), about 15-20% goes to the above the line talent (prior to any additional profit participations) and the remainder is other.

Figure 3. Estimated “Topsheet” Breakdown of Film Production Budget

The image is a bar graph titled "Breakdown of Median Blockbuster Film Budget". The y-axis is labeled with percentages from 0% to 100% in increments of 10%. The x-axis has no label. There are four bars, each representing a different category of the film budget: Other, Post Production, Below the Line, and Above the Line. The "Other" category is represented by a gray bar, "Post Production" by an orange bar, "Below the Line" by a yellow bar, and "Above the Line" by a blue bar. The bars indicate the approximate percentage of the budget allocated to each category.

Source: Author estimates.

Two other points that will be relevant when we start to explore potential cost savings:

*   The average VFX spend on these big budget films is ~$50 million, but on some productions (like effects-heavy superhero films), VFX can push $100 million. For Avatar: Way of Water, the VFX costs surely exceeded that; 98% of the shots required VFX.

Most production spend is for labor—probably ~2/3.

*   Also, most of this spend is on labor. Look again at Figure 3. The vast majority of ATL costs are labor (producers, directors, actors); probably about 60% of the BTL costs are crew (production staff, grips, physical production crew, makeup artists); maybe 50-60% of post production costs are effectively labor (VFX artists, sound engineers); and maybe half of other too. All-in, labor is probably 2/3 of costs.

To underscore the latter point, Figure 4 is another analysis from Follows. While a little dated, the most labor-intensive movies employ thousands of people. Follows counts 4,500 people involved in making Avengers: Infinity War. Including outside vendors (including VFX houses), Avatar: Way of Water probably exceeds that. It's true of TV too. IMDb lists over 9,000 people involved in making Game of Thrones over its eight seasons.

Figure 4. The Most Labor Intensive Movies Employ Thousands of People

[https://archive.ph/WE4AQ](https://archive.ph/WE4AQ)

6/22

# 4/23/25, 6:56 PM
Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

The image is a bar graph titled "Movies with the largest number of crew credits, 2000-18". The y-axis is labeled with numbers from 0 to 5,000 in increments of 500, and the x-axis lists various movies. The height of each bar corresponds to the number of crew credits for each movie. The movies listed are: The Avengers, Avatar, Black Panther, Guardians of the Galaxy, Thor: Ragnarok, Avengers: Endgame, John Carter, Iron Man 3, Avengers: Age of Ultron, and Avengers: Infinity War.

Source: Stephen Follows.

Next, let's turn to GenAI use cases and how they may affect these costs.

Current Use Cases

New AI and GenAI use cases for film and TV production seem to be cropping up weekly. There are two broad categories:

*   Tools that synthetically create something (people, ideas, faces, animals, sets, environments, voices, costumes, make up, sound effects, etc.), replacing the need for the physical or natural version of that thing.
*   Tools that automate tasks that are currently very labor intensive and expensive.

Here are some of the highest-value use cases that are feasible today (or will be soon), across the production process:

Development

Story Development

This includes general-purpose text generators, such as ChatGPT, and purpose built tools, to aid in concept development and draft scriptwriting. For instance, SHOW-1 (supposedly) will enable the creation of narrative arcs (i.e., an entire episode for a TV series) that are consistent with the characters and canon of an existing, pre-trained intellectual property. (The first demo was AI-created episodes of South Park, as shown here.) There are also a slew of AI writing assistants built on top of ChatGPT or GPT-4, such as Sudowrite, that can provide feedback, suggest plot developments and write passages consistent with an existing style.

To be clear, I'm not suggesting that these kinds of tools can replace writers altogether. My view is that compelling storytelling will require human judgment for the foreseeable future. But they may make the writing process much more efficient, which -corroborating the WGA's concerns in the ongoing strike- would likely mean fewer writers or writers needed for less time.

Pre-Production

Storyboarding/Animatics

It's possible today to use general purpose text-to-image tools, like Midjourney and DALL-E, to quickly make storyboards or import these into Adobe Premiere Pro to stitch together rough animatics (i.e., animated storyboards). Highly stylized

[https://archive.ph/WE4AQ](https://archive.ph/WE4AQ)

7/22

# 4/23/25, 6:56 PM
Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

storyboards that might've taken skilled artists weeks to create can now be done in days.

Adobe also recently teased the launch of Firefly (it's family of GenAI models) for Premiere Pro and After Effects, which will include the ability to automatically create basic storyboards just by uploading a script.

GenAI video generators (like RunwayML, Pika Labs and Kaiber) can also create animatics. For instance, using RunwayML Gen-1, it's possible to apply a specific style to a simple reference video shot on a mobile phone and quickly rough out animatics (see below). Rather than show up at a pitch meeting with a text treatment, a writer/showrunner/director could now show up with a very rudimentary version of the movie itself.

Gen-1: The Next Step Forward for Generative Al

Copy link

There is a YouTube video embedded in the document.

Previs

While storyboards are used to provide a sense of narrative, previs is used to precisely plan out how to shoot key sequences (namely, where to place the camera, how it will move, the spatial relations between different elements, including characters and props, and lighting). It is an expensive and labor-intensive process that basically entails building 3D models, situating them in 3D space and creating a parallel film for the critical scenes.

Neural Radiance Field (NeRF) is a relatively new deep learning technology that can approximate 3D scenes from 2D images, making it much cheaper and easier to develop 3D models (especially for previs purposes, for which the standards are lower than the film itself). Luma Labs uses NeRF to create 3D models from photos in real time, even from an iPhone, compared to the days or weeks it takes to create traditional 3D models. A company called CSM enables the creation of 3D assets from image or video inputs. Alternatively, Luma, as well as companies like Spline and 3DFY, are rolling out text-to-3D models that can create a 3D model from a simple text prompt.

Whether using NeRF or text/image/video-to-3D, these objects can then be imported into Maya, Blender or Unreal Engine to quicky simulate shooting environments.

I try the tech that WILL replace CG one day

Copy link

[https://archive.ph/WE4AQ](https://archive.ph/WE4AQ)

8/22

# 4/23/25, 6:56 PM
Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

There is a YouTube video embedded in the document.

Production

B-roll

I already mentioned Runway, Pika and Kaiber above, the text/image/video-to-video generators that most people think of when they conjure up "GenAI in film." Arthur C. Clarke once famously said that “any sufficiently advanced technology is indistinguishable from magic" and typing in a prompt and getting a video feels a lot like magic to me. They also have come very far in a short time. When Runway Gen-2 came out, it only generated video from a text prompt and you had no idea what you'd get. Now it supports uploading a reference image (such as an image from Midjourney or DALL-E) or video and custom camera control, making it a far easier to control the output.

The internet is chock full of interesting text/image/video-to-video experiments. (Runway recently launched an aggregation site, called Runway Watch, where you can check out some.) Most are either surreal sequences or trailers for fictitious movies, like this cool example.

Genesis - Official Trailer (Midjourney + Runway)

Copy link

There is a YouTube video embedded in the document.

They may be mesmerizing, but for the most part these experiments are still a novelty. They aren't anything that most people would plunk down on the couch with a bag of popcorn and watch. The output on these tools is limited (Runway just increased the length from 4 seconds to 18 seconds) and frame consistency breaks down quickly,

[https://archive.ph/WE4AQ](https://archive.ph/WE4AQ)

9/22

# 4/23/25, 6:56 PM
Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

which severely constrains how you can use them. There is also no dialog (mouths can't synch with audio yet) and therefore not much storytelling.

They will unquestionably keep getting better, as I discuss below. But even today they may be useful in traditional productions for what is known as “B-roll” shots. B-roll shots are interspersed with the main ("A-roll") footage to establish a setting or mood, indicate the passage of time, transition between scenes or clue in audiences to a detail that the main characters missed, etc.

Text-to-video generators may also be useful in title sequences or even trailers. Disney recently used GenAI to create the title sequence for Secret Invasion. Also, check out the first 1:00 of the trailer for Zach Snyder's new film, Rebel Moon. It probably wasn't made with GenAI, but it sure looks like it was.

Rebel Moon | Official Teaser Trailer | Netflix

Copy link

There is a YouTube video embedded in the document.

Post Production

Editing

Conceptually, GenAI can dramatically speed up editing processes by enabling editors to adjust one or a few key frames and have the AI extrapolate that change through all the relevant subsequent frames.

While Runway is probably best known as a pioneer in text-to-video, it also offers a suite of AI-based editing tools (see my dashboard below). These include the ability to clean up backgrounds, turn any video into slo-mo, color grade video with just a text prompt, etc. The Remove Background tool automates the process of isolating an element of a video, also called rotoscoping. This enables the element to be composited onto a new background.

[https://archive.ph/WE4AQ](https://archive.ph/WE4AQ)

10/22


# 4/23/25, 6:56 PM

Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

Doug
member
nvite Collaborators
Home
▷Watch
Generate videos
Edit videos
Edit audio & subtitles
Generate images
Edit images
3D
Al Training
Projects
Search for tools, assets and projects
IP
Shared with me
Remove Background
Inpainting
Color Grade (LUT)
Super-Slow Motion
Blur Faces
Depth of Field
Assets



# Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

4/23/25, 6:56 PM

Mandalorian, etc.) But it would also mean that every other part of the physical production process would be subject to being replaced synthetically.

## Scenario 3: Consumers Draw the Line at Synthetic Ideas

In this scenario, creating a movie or TV show would still require a very skilled team, or at least an individual, to generate ideas and vet the options presented by the AI(s). As I've written before (see here and here), I subscribe to this view.

But it would also mean that everything on screen could be produced synthetically. There could be no actors (or, obviously, costumes or makeup), sets, lighting, locations, vehicles, props, etc. Or, as Runway writes brazenly on its site "No lights. No camera. All Action."

## Scenario 4: There is No Line

This is what I once called the “generative-AI doom-loop”:

ChatGPT-X, trained to generate, evaluate and iterate storylines and scripts; then hooked into Imagen Video vX, which generates the corresponding video content; which is then published to TikTok (or its future equivalent), where content is tested among billions of daily users, who surface the most viral programming; which is then fed back into ChatGPT-X for further development. (H/t to my brilliant former colleague Thomas Gewecke for this depressing scenario.) New worlds, characters, TV series, movies and even games spun up ad infinitum, with no or minimal human involvement. It's akin to the proverbial infinite monkey theorem.

Under this scenario, the cost of TV and film production would be identical to the cost of compute.

## The Next Use Cases

With those scenarios in mind, we can think about the next set of use cases. Personally, I think that for the foreseeable future we will be somewhere between Scenario 2 and 3 -namely that human actors will still be necessary in most films and TV shows, at least for a while, and we will still need small teams or at least individuals generating ideas and overseeing productions indefinitely.

Even so, there could still be profound changes to the production process over coming years. Here is an inexhaustive list of possible outcomes (h/t Chad Nelson for a lot of these ideas):

### End of the Soundstage/End of Shooting On-Location

As described above, GenAI already makes it possible to quickly and easily isolate an element in video. It will also increasingly be possible to synthetically create and customize backdrops and sets and control lighting. This raises the question: even if we still need actors, will we still need the controlled environments of soundstages and location shoots? Or could actors simply act out scenes in an empty room and the scene could be composited?

### No Costumes or Make-up

Under the same logic, over time it will be increasingly easy to digitally add make-up and costumes after the fact.

https://archive.ph/WE4AQ

16/22

# Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

4/23/25, 6:56 PM

### First Pass Editing/VFX Co-Pilot

The Adobe Firefly-Premiere Pro demo video above shows something pretty remarkable. In the video sequence with the rock climber, the AI scans the audio and automatically edits in B-roll footage where appropriate.

In the future, it is likely that editing software will make a first pass at an edit, which can then be reviewed by a human editor. Similarly, it's easy to envision an editing co-pilot or a VFX co-pilot that could create and adjust visual effects in response to natural language prompts. "Fix those under-eye bags through the remainder of the shot."

### Acting Doubles

Face swapping/deep fake tools keep improving. There are also a growing number of synthetic voice tools that can be quickly trained on someone's voice, such as those offered by ElevenLabs and HeyGen. This raises the possibility that A-list actors (or even deceased actors' estates) could license their likenesses and voices for a film or TV show, but never step foot on set.

An entire film could be acted out by an "acting double," but through face and voice swapping it would be imperceptible to viewers that the actor wasn't there. Or perhaps the principal actor will only be physically present for a small proportion of the scenes they are "in." Will actors be willing to give up that much creative control? Maybe or maybe not. But it will be possible.

[Image of a video player with the text "This video is private" displayed in the center.]

### Cinematic/TV- Quality Text-to-Video

As also mentioned above, text-to-video generators keep improving and providing more control over the output. Just a few months ago, generating a video was a slot machine. Now these tools enable training the Al on a reference image or video and they're adding more camera controls.

The logical extension is that over time, resolution will get better, it will get better at replicating reference images or videos, there will be better image consistency from frame to frame (as promised by new technologies like CoDeF and Re-render-A-Video), output clips will get longer, rendering times will get shorter and creators will have more control over camera movement, lighting, directorial style, synching audio with character's mouths, etc. At that point, text-to-video may cease being a novelty and it

https://archive.ph/WE4AQ

17/22

# Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

4/23/25, 6:56 PM

may become increasingly possible to stitch it together into a watchable, narrative show or movie.

Will viewers embrace content with no humans it it? Probably, especially if there is no pretense that they are watching real people (by the way, that's called "animation"). Over time, this will become more so a philosophical question than an aesthetic one. Given the increasingly realistic faces being produced by Midjourney v 5, eventually it may become impossible to tell who's a real person and what's not.

Over time, whether consumers will watch movies with synthetic humans will become more so a philosophical question, not an aesthetic one.

### Custom Training Models for First Pass Storytelling

Another logical extension of text/image/video-to-video models is that they will be trained on proprietary data. It would be possible, for example, for Disney to train models on the entire canon of Marvel comics and MCU movies and have it generate (near-infinite?) first drafts of new scripts and animatics. Similarly, it should be possible for Steven Spielberg to train a model on his body of work and then feed in a new concept and see what the video generator spits out.

This is not to say that these first cuts will be watchable, finished product, but rather than they could dramatically increase the speed and quantity of development.

GenAI may enable new forms of storytelling.

### New Types of Content

There is a common pattern in media that new mediums mimic prior ones. The first radio programs were broadcasts of vaudeville shows; the first TV broadcasts were televised stage plays; the first web pages were static text, like newspapers or magazines. Over time, developers and artists learn to exploit the unique attributes of the new medium to tell stories and convey information in new ways.

It's an interesting exercise to think about what that means for GenAI video generators. While traditional movies and TV shows are static, finished product, in which all viewers watch the same thing, synthetic video generators like Runway are creating video on the fly (and, eventually, probably real-time). This raises the possibility of customizable or responsive video that changes in response to user inputs, context, geography and current events. What does this mean? Who knows—but the key idea is that GenAI video may not only offer dramatic cost savings compared to traditional production processes, but may one day offer viewers a fundamentally different experience.

### Costs May Plummet

Under any of the scenarios above (perhaps other than Scenario 1), production costs are heading down a lot.

https://archive.ph/WE4AQ

18/22

# Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

4/23/25, 6:56 PM

Let's assume that you still need a small creative team and human actors to create a compelling TV show or film. Let's also assume that the “cost" of that team approximates the costs of the Above the Line (ATL) team on a current production. As shown in Figure 3 above, that's only about 20% of costs. The other 80% would be subject to downward sloping technology curves. Today, on the median big budget film, those non-ATL are roughly $160-170 million, or about $1.5 million per minute. Over time, where does this go? As alluded to above, the answer probably looks a lot like the cost curve for compute itself. What if this is headed to $1,000, $100 or $10 per minute?

Over time, the cost of non-ATL costs may approximate the cost of compute.

Assuming that ATL costs remain constant probably overstates what would happen to production costs because falling costs would likely alter the economic model of TV and film. Today, as discussed above, movies and TV shows are extremely expensive, and risky, to produce. Since studios take on all this risk, they also retain almost all the equity in these projects. Instead, they pay A-listers big fixed payments and only sometimes reluctantly (and parsimoniously) parcel out some profit participation points. ATL costs are essentially these guaranteed payments.

Even if there are still humans involved, the cost to produce could fall by orders of magnitude.

But what if the non-ATL costs are not in the tens or hundreds of millions, but in the millions or eventually thousands of dollars? Then it won't be necessary for studios to take on so much risk. In this case, it becomes much more likely that the creative teams forego guaranteed payments, finance productions themselves and keep most of the equity (and upside)—in other words, ATL costs as we know them today may go away. If there are effectively no ATL costs, it means that even if there is still significant human involvement, the upfront cost to produce a film or TV show could eventually falls by orders of magnitude.

## What Should Hollywood Do?

The whole premise of many of my recent posts (The Four Horsemen of the TV Apocalypse, Forget Peak TV, Here Comes Infinite TV and How Will the “Disruption” of Hollywood Play Out?) is that falling production costs will lower barriers to entry. For all the reasons discussed above, over time small teams and creative individuals will increasingly be able to make Hollywood-quality content for pennies on the dollar- leading to what I've been calling “infinite content.” And while Hollywood is currently reeling from the disruption of distribution that Netflix triggered 15 years ago, these falling entry barriers could trigger a next wave of disruption.

The silver lining for Hollywood is that these technologies can lower their costs too. So, if you're running a big studio, how can you capitalize? You're managing a large business, with a lot of people used to doing things a certain way. You are also competing for creative talent with other studios and generally don't have the

https://archive.ph/WE4AQ

19/22

# Al Use Cases in Hollywood - by Doug Shapiro - The Mediator

4/23/25, 6:56 PM

bargaining power to tell them how to do their job, especially the most sought-after A-listers. ("Yes, Chris Nolan, we love your latest project, but we will be requiring some fundamental changes in your creative process...")

Adopting these new technologies will be a large challenge technologically, but it will be an even bigger change management challenge. Getting people to change is really hard. I know. That's why it will be so much easier for small independent teams, starting with a clean piece of paper, to adopt these tools much faster.

For an established studio, there are two possible paths:

*   Choose a non-core process to test. The most politically viable processes will be those that are already done by third-parties. For instance, you might shift localization services to AI-enabled providers in some markets or you could bring more VFX work in house with the mandate to use AI tools (and lower costs).
*   Create a skunkworks. In this case, you would establish a separate studio to start from scratch to test the relative cost, quality and speed of "AI-first" content production.

Neither of these incremental approaches are likely to move the needle a ton in the near-term, but at least they will start to build up AI "muscle memory" in the organization.

## Head-Spinning, I Know

All of this is moving at an dizzying pace. Even if you spend a lot of time trying to stay on top of these developments, as I do, it's hard to keep up. If you work in the industry, it may be enthralling. It may also be overwhelming and scary.

For good or ill, technology marches on. Forearmed is forewarned.

### Subscribe to The Mediator

By Doug Shapiro

The Mediator is (mostly) about the long term structural changes in the media industry and the business, cultural, and societal implications of those shifts. I write it to get closer to the frontier.

By subscribing, I agree to Substack's Terms of Use, and acknowledge its Information Collection Notice and Privacy Policy..

[Image of four people's profile pictures with the text "4 Likes" next to them.]

[Image of a heart icon] 4 [Image of a comment icon] 1 [Image of a refresh icon]

Previous

Discussion about this post

https://archive.ph/WE4AQ

Share

Next →

20/22
