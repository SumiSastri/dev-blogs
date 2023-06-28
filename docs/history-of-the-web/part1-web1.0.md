---
layout: default
parent: History of the web
nav_order: 2
title: A love letter to the personal website
---


# A love letter to the personal website

Full disclosure right up front, this conference and the topics have been doing a slow brew in my head. I looked at my own portfolio website and removed some JavaScript (might remove more), gave static-site-generators a twirl and thought they were over-engineered. Finally Just the Docs is the barest bones of HTML-CSS and Jekyll with GitHub as the host, the option I chose for my dev blogs.

That's the history of this blog site - but on to the more important topic that was discussed and the thoughts that have influenced my thinking about web development in the last year...

If we thought Web 1.0 was dead, a full-stack conference hosted by Stack Skills considered it fun to resurrect that dead thought from the grave. The theme was taking us through a brief history of the web starting with HTML and reminding us that CSS are perfect tools to build any website, all that JavaScript added was the browser wars and bugs...

Sophie Koonin's introductory talk, “A love letter to the personal website,” took us through the sad loss of the personal websites of the 1990s - websites for profit for pleasure of the individual not for the profit of the conglomerates.

## What is the differrence between Web 1.0, 2.0 and 3.0 ?

Here is a brief time-line of the transition points between the 3 versions of the web:

1997 - The world-wide-web, which was started by document sharing amongs academics, was built on HTML, Hyper Text MarkUp Language with URLs - Unique Resource Locators - that linked the documents and gave academics access to scientific research.

Web 1.0 started as a document storage and sharing experiment, till the advent the introduction of CSS, Cascading Style Sheets, which provided more opportunities for styling the typewriter style printed page.

Kooky sites like [Sad Girl](https://sadgrl.online/) and [Cassie Online](https://www.cassieonline.co.uk/), being examples of the next phase in the development of the web where people built sites for fun, self-expression and creativity.

It was not just with content, but with top-level-domains, that the sites explored - `https://carol.gg/` and `https://ghost.computer/`  being examples - the `.gg` and `.computer` are the top-level-domains - today there is a scrabble for the more commercial `.com` top-level-domain names. Even where the top-level-domain names were creative, the secondary-domain names like
`https://lynnandtonic.com/` and `https://darn.es/` showed the creative flair that early developers had, some of this has been retained - `lyndaandtonic` and `google` are creative names, but today's creative naming seem to be more about brand building than self-expression.

Another common feature of these sites are, they are all built in HTML and CSS with no JavaScript in sight. The purpose of early websites of the 1990s were to be creative and kooky to mark your individuality on the web.  

Web 2.0 was coined in 1999 by [Darci DiNucci](http://darcyd.com/), whose personal website display all the characteristics of Web 1.0 static pages, no email form, you need to download a CV which is stored on a URL rather than a database, limited CSS and no JavaScript. The name Web 1.0 was retrofitted by DiNucci a UI-UX and technical writer, to differentiate Web 2.0 which was more feature rich.

One of the early movers to shift the dynamic of the web as a document storage system for academics and researchers, was the content generator, [My Space](https://myspace.com/) which also socialised content. Web 2.0, played to DiNucci's strengths - a focus on the user-experience(UX), personalisation of the user-journey with UXD (ux-design frameworks), data stored server-side with Application Protocol Interfaces (APIs) allowing for maps to be placed on a page by calling resources with an Application Programming Interface (API). The use of data stored on a server and APIs along with improved UI-UXD encouraged more users to post blogs, comments, reactions, photographs, images making the web more interconnected and devices and infrastructures more interoperable.

As a precursor to Web 2.0, where the consumer created the content, in Koonin’s opinion, MySpace ruined the web for these indie sites. The term Web 2.0, was only widely adopted in 2004 in a conference where DiNucci's original terminology to differentiate the 2 versions of the web was viralised.

The general word of caution on Web 2.0, from Koonin, is that although it has influenced a whole generation of content creators to flock to social media sites, it has also spelt the death of the creative impulse of self-experession and a risk towards looking like cookie-cutter imprints of each other. If you do see the My Space site, for example, it has suffered from this general trend.

While, individuality is lost, customisation is limited, algorithms harvest data and generate feeds of echo-chamber information, which is even more dangerous, Koonin said.

The discussion about Web 3.0 started around 2006, where mobile distruption and bigger data with all its infrastructure, capacity and privacy issues grew exponentially. Social media sites which started with MySpace, today include Facebook, Instagram, TikTok, YouTube, Twitter and the like have resulted in a more ominous trend - the cancel culture, Koonin said. 

Web 3.0 is not really a "thing" as it has not been designed, defined and its characteristics - big data, use of emerging technologies like artificial intelligence, machine learning, block chain are making significant departures from what Web 2.0 looked like.

Kooning, also said, Web 2.0 needed a reset as the cancel culture will slowly lead to content loss when these sites are taken down by the platforms that host this user-generated-content. Content generators now need to think of uncreative content guidelines - search-engine-optimisation and other engagement metrics taking the fun out of building a personal website. Emergent technlogies like, AI (artificial intelligence), interconnected devices with IoT (the internet of things) and NFC (near field communication) will alogorithmize content and many human interactions. This has the potential of rendering content we consume devoid of human intelligence and actions we take devoid of human intervention. This will all be in the name of convenience, speed and removing the nature of individuals, prone errors and creative rather than programmed logic.

Pointing us to [Indie Web](https://indieweb.org/) and [Yester Web](https://yesterweb.org/) which aims to “reclaim the web,” the movement encourages developers to harken back to the past and create a personal website which is not dependent on pre-built templates like WordPress, Wix and Square Space offer but on vanilla HTML and CSS.

Koonin suggests we turn this paradigm on its head and join the [POSSE](https://indieweb.org/POSSE) - the movement to Publish on your Own Site and Syndicate Everywhere.

The challenge with this spartan approach - HTML and CSS, is the lack of tools and options that JavaScript offer. A shibbolith that Elad Schechter, who was the next speaker, aimed to dismiss. It is hard to convice a crowd of developers who are keen to learn the next best thing that going backwards is the way forwards, but it certainly made me think in new ways about how to approach what has become a significantly over-engineered space.

## Pure CSS Games - hey no blinking JavaScript

Schechter, ran through “How to Create Pure CSS Games”, using clever CSS tricks like checkboxes and radio-buttons and CSS animations.

Schechter ran through how he created a CSS counter for his games and animations. Pseudo classes, sibling selectors in conjunction with CSS animations like transform-rotate helped providing an illusion of movement.  

Schechter created atoms of coronavirus with blinking eyes, elements appearing and disappearing, movement of these atoms across the page using and CSS attributes like display-block and display-none or setting opacity at various levels. 

Worth checking out is Elad2412 on Code pen for more inspiration as there was not a line of JavaScript code on the page - though a HTML pre-processor was used for the page layout.

## Assistive technologies - why Web 1.0 worked better with just HTML

On a more serious note, Sam Prioux, highlighted how Web 2.0 creates more complexity and less accessibility to visually challenged users. Web 1.0 offered text-to-speech screen readers and since most of the web was HTML, this made the early web much more universally accessible. Text could also be printed to braille.

Today with text layered with images, audio, and video there are still tools to make the web more accessible. Command-line-interface (CLI) tools, image recognition tags, voice recognition, video-magnification, and accessibility APIs.

Hardware and software developers, Prioux said, need to work together as computer central processing units (CPUs), and compute-power, can be slow with speech recognition. Commercial Assistive Technologies are in their infancy and need to be further developed.

Web 2.0 and mobile disruption with touchscreens, more event-driven behaviours on clicks, on blur, on mouse in and out, icons that point to these events rather than words made Web 2.0 a difficult space to navigate for those who needed accessibility to be built into the programming and hardware. It was not till Apple introduced touch-screen accessibility that hardware caught up with the needs of computer accessibility to the community who needed additional support, Prioux said.

However, web standards for accessibility, browser extensions and API (Application Protocol Interfaces) capabilities are still not fully understood and both hardware and software developers need to think of future accessibility not just play catch up - Augmented Reality technologies like Virtual Reality, new crypto currencies - are just a few Prioux mentioned.

He also warned of privacy and biases in the field of assistive technology. A lot more work needs to be done with the community in UI-UXD (user-interface and user-experience-design).

Prioux, provided an inspiring and insightful look into the plethora of options to be creative and ensure accessibility to prevent abuse of privacy and stop biases across devices.

AI promises to revolutionise accessibility, he also pointed developers to think of customisation for accessibility or creating separate but equal experiences for assistive technologies that help ease of use and enjoyment of use.  

And on a seriously light-hearted note, Herve Aniglo, talked about teaching children to code with music using [Sonic PI](https://sonic-pi.net/) a language agnostic platform that helps you learn recursions, looping, circuit breaking and functional programming by creating simple tunes.  

Python, JavaScript, and Ruby are languages that can be learnt by programming sounds for synthesisers. Conversely, it is also a tool for programmers to learn how to read and write music.

Like Prioux, Aniglo talked about the mixture of sound and code as the developer experience as you learn to code making teaching coding more accessible to a wider audience.

In Part2, I have aggregated the talks on JavaScript together to tell a story - is JavaScript really the big bad wolf of the web or just another coding language, a tool at our disposal.
