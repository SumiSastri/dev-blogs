---
layout: default
parent: History of the Web
nav_order: 2
title: Enter the browser with the JavaScript dragon
---

# Enter the browser with the JavaScript dragon

With the introduction of JavaScript to the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, [Brenden Eich](https://brendaneich.com/) its creator and co-founder of [Mozilla](https://www.mozilla.org/en-GB/firefox/), did not anticipate the browser wars and the host of controversy that JavaScript brought to the rapid growth of the Web and mobile apps.  

At a 2-day full-stack conference hosted by [Stack Skills](https://stackskills.com/), speakers reflected on the good-old-days of Web 1.0 and the risks that the introduction of JavaScript created, if you are interested in this section read [Part 1 - A love letter to the personal website](https://sumisastri.github.io/dev-blogs/history-of-the-web/part1-web1.0/)

While HTML (Hyper Text Markup Language) is just text and CSS (Cascading Style Sheets) enhanced a web page with HTML attributes for layouts, design, colour and animations, JavaScript took web-development to another level of interactivity.

JavaScript allows the user to interact with every HTML element and change its behaviour. This event-driven behaviour is based on the users’ interaction with the Web - mouse and key movements, clicks on the page - offering a whole new way of looking at web data and analytics.

Web 1.0 from static sites, with text and some styling but with limited user interaction, transformed and JavaScript allowed users to now interact with pages - click buttons, see sliders and animated picture galleries, play interactive games.

However Web 2.0 is not just about JavaScript that the user can interact with, it also about JavaScript accessing DBs (databases) with Application Programming Interfaces (APIs).

Every hardware developer wanted a JavaScript engine to parse the Web documents so that users who were adopting personal computers and interacting with the Web could have a better user-experience (UX).

Microsoft kicked the ball into play with Internet Explorer, google followed with Chrome, Apple with Safari and Mozilla with Firefox. Many other niche market players emerged, made inroads into the market, many got burnt and/ or suffered decay.

UX design became more important and JavaScript frameworks like google's AngularJS, or Facebook's user interface library called ReactJS,  burgeoned and grew to enhance the developer experience.

The real disruptor was mobile technologies with the emphasis on technologies that supported mobile-app development.

Given this shift from web applications to mobile applications, Bruce Lawson’s look under the hood of the browser wars with a talk called _"Internet Explorer - Rest in Peace (RIP) or Be Right Back (BRB)?"_, explored the history of the browser in the evolution of the world wide web.

While the browser wars raged in the 1990s, today Safari has been taken to task for not using Chrome, Internet Explorer, Firefox, or any other browser on its mobile devices, he said.

Apple phones and i-pads mask these browsers and use Safari, which users see and interact with. However, the UX with Safari is so poor that users often prefer Android mobile devices. A plurality of browsers perform so much better on speed and efficiency, Lawson said. As of 2025, Apple in Europe under the Digital Act will be obliged to change this anti-competitive behaviour, he added.

## I'm going to the garden to eat bugs - big ones, fat ones, round ones, curly ones

Browsers, and JavaScript with all its avatars, also bring with them the joy of bugs.

Gabriel Manor-Leichtman’s in-depth look at browser developer tools to help debugging code and network performance issues was worth reviewing once again for its rich content and useful guidelines on the online playback of Stack Skills conference package.

Loosely typed JavaScript, and its bug-ridden code, can partially be tackled with the stricter TypeScript superscript.

TypeScript, has uses well beyond the frontend, as Ryan Cormack from the online card and gifts site, Moonpig, pointed out. Using Amazon Web Services (AWS) which compiles down to Cloud Formation, you can move JavaScript code and embedded data from the frontend to the backend of apps with TypeScript lambda functions.

This does not come without its trade-offs, Cormack said, you need to write imperative (versus declarative) code if you use YAML (Yet Another Markup Language - also known as YML) compilation, deal with constant code updates and have at least a foundational knowledge of AWS, which has its own learning curve.

A way through this maze of JavaScript options is to choose the option of creating micro-frontends to scale and deploy complex apps, Teresa Wu said, demonstrating how the Chase App worked. 

Chase’s banking app looked the customer journey from onboarding through to off-boarding with each segment of the UX built with strategic intent and collaboration but released in operational isolation to speed up the process of development and ensure each moving part of the app worked efficiently.  

Micro frontends, Wu said, helps modularisation. For example, customer navigation through the app can be tested as the journey changes. This offers flexibility where it is needed. Navigation (the main - entry point for the customer) is wrapped in routine logic but when authentication of the user is required, authentication logic and a more centralised logic is used. This works, like a proxy, Wu said, where the two sets of logic reference each other. All of this helps scaling web and mobile apps.

## Testing and data availability challenges with JavaScript

Testing also becomes an imperative with the introduction of JavaScript and the multi-device nature of application development.  

Going through the testing pyramid, Rob Richardson, talked about the need to create a testing strategy where fewer end-to-end or integration tests were written with thought and intent while several unit tests constantly tested code blocks.  

Code testing is also more complex as the developer shifts through environments - developer, staging, integration, and production with different tests required at each of these stages of code build. Infrastructure has also to be taken into consideration. 

Availability of data also becomes a challenge with testing. Due to higher levels of regulation on data-security, not all developers see all the data. With data not visible, it becomes difficult to do a proper root-cause analysis and reproduce a bug locally. It is also not easy to define how much data you need to see to test the bug. With regulation preventing access to the amount of data a developer has access to loggers and tracing tools as well as remote debugging are options to live or local debugging, Richardson said.

Specifically testing for mobile devices and browsers on different platforms is part of the integration testing that Web 2.0 developers need to consider.

## Fun, fun, FWAs?

A little left field was the option to build Functional Web Apps (FWAs) with Web Components proposed by Simon McDonald. Web Components are APIs to different web platforms that help you create custom HTML tags and design your app pages.

FWAs solve the challenge that developers face with Dynamic Web Apps (DWAs), JAM (JavaScript, APIs and Markup) stacks and PWAs (Progressive Web Apps), McDonald said. Markup refers to the styling from CSS stylesheets that marks up HTML text blocks helping in layouts and organising chunky blocks of text.

DWAs consume APIs from external sources, the complex modern system of libraries and tooling services that they bring, result in the constant converting of modern JavaScript code back into vanilla JavaScript that browsers understand.

DWAs require debugging with source maps for multiple branches of code as well as maintenance of versions of code updates with patches and breaking changes.

All this makes for a poor customer experience (CX), as well as developer experience (DX). Background jobs like cron jobs are clunky and infrastructure as code may solve some of these challenges, but not all.

The JAM-stack which relies on HTML, CSS & JavaScript mashed-up into one artefact has its own trade-offs, McDonald said.These are slow builds, not really a full-stack - the rehydration from API calls to the frontend is slow and not always secure.

PWAs are built on HTML, CSS and JavaScript rather than traditional mobile-app languages like Swift or Kotlin. They are accessed through a browser. To enhance the speed of dowloading PWAs use pre-processors to format and minify code. A pre-processor, takes out all the empty spaces in a code block (minification) and formats newer versions of JavaScript to a version that browsers recognise.

When a website is created a tree of all the elements called the DOM (Document Object Model) is built. To shake out the fluff from every branch of this DOM-tree, pre-processors have to delve into a complex mesh of HTML elements. A process called layout-thrashing or DOM-tree shaking. With complex nested DOMs - as more pages and complex layouts, API calls are made, this process of layout-thrashing and DOM-tree shaking can become a headache.

FWAs, on the other hand, with their HTML first approach offers dynamic personalisation and assistive technologies built in by default.

FWAs are built using functions as code, programmed on the server using managed DBs making deployments more efficient.

With this enhanced control comes a better CX, inclusivity, speed and even a better DX with less maintenance and breaking changes from versions of code updates.

The cons are that code must be loaded in memory in the machine and this is limiting in terms of the time taken to parse the code and then run it. Not all DBs are able to fill this requirement.

Emergent DBs - Cosmos (Azure), DynamoDB (AWS), PlanetScale, a relational DB or Fauna and document-style DB (independents not linked to any big cloud provider) - fill this gap, he said.

Another challenge with FWAs is infrastructure as code is complex, as Cormack highlighted earlier in the day. DBs are often linked to a cloud-based service you must decide on the cloud service provider you are going to use and go all in with AWS/ Google/ Azure.

This all is may not be the optimal option for some organisations. The BBC has gone down this route and for more inspiration, McDonald pointed to resources [Begin](https://begin.com/) to explore the option of FWA suitability.

As a total aside, [fun-fun functions](https://www.youtube.com/channel/UCO1cgjhGzsSYb1rsB4bFe4Q) is a great YouTuber - sadly taking a sabbatical but a great Web 2.0 site to checkout and total inspiration for the subhead I chose for this section...he will be more sadly missed than Web 1.0 imho :-).

### Additional Resources

- [Fossbytes - Who is Brenden Eich](https://fossbytes.com/who-is-brendan-eich/)

- [What are FWAs (Functional Web Apps)](https://fwa.dev/)

- [What are web components](https://coherent-labs.com/posts/web-components/)

- [What are DWAs (Dynamic Web Apps)](https://www.ramotion.com/blog/dynamic-web-application-development/)

- [What is the JAM-Stack](https://jamstack.org/what-is-jamstack/)

- [What are PWAs (Progressive Web Apps)](https://www.codecademy.com/resources/blog/what-is-a-progressive-web-application/)

- [What are assistive technologies](https://www.who.int/news-room/fact-sheets/detail/assistive-technology)
