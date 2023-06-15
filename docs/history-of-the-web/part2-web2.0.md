---
layout: default
parent: History of the web
nav_order: 2
title: Enter the browser with the JavaScript dragon
---

# Enter the browser with the JavaScript dragon

With the introduction of JavaScript to the web, Brenden Eich its creator, did not anticipate the browser wars and the host of controversy that JavaScript brought to the rapid growth of the web and web-mobile apps.  At a full-stack conference hosted by Stack Skills, speakers reflected on the good-old-days of Web 1.0 and the risks that the introduction of JavaScript created.

While HTML is just text and CSS enhanced a web page with HTML attributes for layouts, design, colour and animations, JavaScript took web-development to another level of interactivity. JavaScript allows the user to interact with every HTML element and change its behaviour. This event-driven behaviour is based on the users’ interaction with the web - mouse and key movements, clicks on the page and offered a whole new way of looking at web data and analytics.

Web 1.0 from static sites, with text and some styling but with limited user interaction, transformed and JavaScript allowed users to now interact with pages - click buttons, see sliders and animated picture galleries, play interactive games.

However Web 2.0 is not just about JavaScript that the user can interact with, it also about JavaScript accessing databases with Application Programming Interfaces (APIs).

Every hardware developer wanted a JavaScript engine to parse the web documents so that users who were adopting personal computers and interacting with the web could have a better user experience (UX). Microsoft kicked the ball into play with Internet Explorer, google followed with Chrome, Apple with Safari and Mozilla with Firefox, many other niche market players emerged, made inroads into the market, got burnt and decayed.

UX design became more important and JavaScript frameworks like google's AngularJS, or Facebook's UI (user interface) library, ReactJS,  burgeoned and grew to make the developer experience better in creating software for users.

The real disruptor was mobile technologies which the emphasis on technologies that supported mobile-app development. 

Given this shift from web applications to mobile applications, Bruce Lawson’s look under the hood of the browser wars with a talk called __"Internet Explorer - Rest in Peace (RIP) or Be Right Back (BRB)?"__.  

While the browser wars raged in the 1990s, today Safari has been taken to task for not using Chrome, Internet Explorer, Firefox, or any other browser on its mobile devices.

Apple phones and I-pads mask these browsers and use Safari, which users see and interact with. However, the UX with Safari is so poor that users often prefer Android mobile devices. A plurality of browsers perform so much better on speed and efficiency, Lawson said. As of 2025, Apple in Europe under the Digital Act will be obliged to change this anti-competitive behaviour, he added.

## I'm going to the garden to eat bugs - big ones, fat ones, round ones, curly ones

Browsers, and JavaScript with all its avatars, also bring with them the joy of bugs. Gabriel Manor-Leichtman’s in-depth look at browser developer tools to help debugging code and network performance issues was worth reviewing once again for its rich content and useful guidelines on the online playback of Stack Skills conference package.

Loosely typed JavaScript, and its bug-ridden code, can partially be tackled with the stricter TypeScript superscript. TypeScript has uses well beyond the front end as Ryan Cormack from Moon Pig pointed out. Using Amazon Web Services which compiles down to Cloud Formation, you can move JavaScript code and embedded data from the front-end to the back end of apps with TypeScript lambda functions. This does not come without its trade-offs, Cormack said, you need to write imperative (versus declarative) code (if you use yaml compilation), constant code updates and a foundational knowledge of AWS (Amazon Webservice) which has its own learning curve.

A way through this maze of JavaScript options is to choose the option of creating micro-frontends to scale and deploy complex Apps, Teresa Wu said demonstrating how the Chase App worked. Chase’s banking app looked the customer journey (CJ) from onboarding through to off boarding with each segment of the UX built with strategic intent and collaboration but released in operational isolation to speed up the process of development and ensure each moving part of the app worked efficiently.  

Micro-front ends, Wu said, helps modularisation. For example, customer navigation through the app can be tested as the journey changes. This offers flexibility where it is needed. Navigation (the main - entry point for the customer) is wrapped in routine logic but when authentication of the user is required, authentication logic and a more centralised logic is used. This works, like a proxy, Wu said, where the two sets of logic reference each other. All of this helps scaling web and mobile apps.

## Testing and data availability challenges with JavaScript

Testing also becomes an imperative with the introduction of JavaScript and the multi-device nature of application development.  

Going through the testing pyramid, Rob Richardson, talked about the need to create a testing strategy where fewer end-to-end or integration tests were written with thought and intent while several unit tests constantly tested code blocks.  

Code testing is also more complex as the developer shifts through environments - developer, staging, integration, and production with different tests required at each of these stages of code build. Infrastructure has also to be taken into consideration. 

Availability of data also becomes a challenge with testing. Due to higher levels of regulation on data-security, not all developers see all the data. With data not visible, it becomes difficult to do a proper root-cause analysis and reproduce a bug locally. It is also not easy to define how much data you need to see to test the bug. With regulation preventing access to the amount of data a developer has access to loggers and tracing tools as well as remote debugging are options to live or local debugging, Richardson said.

Specifically testing for mobile devices and browsers on different platforms is part of the integration testing that Web 2.0 developers need to consider.

## Fun, fun, Functional Web Apps?

A little left field was the option to build Functional Web Apps (FWAs) with [web components](https://developer.mozilla.org/en-US/docs/Web/Web_Components) proposed by Simon McDonald.

The challenge, as seen by McDonald, with Dynamic Web Apps (DWAs) that consume APIs from external sources is that physical infrastructure is slower to scale than logic.  

Complex modern system of libraries and tooling services result in the constant converting of modern JavaScript code back into vanilla JavaScript that browsers understand. It requires debugging with source maps for multiple branches of code as well as maintenance of versions of code updates with patches and breaking changes. All this makes for a poor customer experience (CX), as well as developer experience (DX). Background jobs like cron jobs are clunky and infrastructure as code may solve some of these challenges, but not all.

The JAM-stack which relies on JavaScript, APIs, and Markup with code mashed-up into one artefact has its own trade-offs, McDonald said - slow builds, not really a full-stack - the rehydration from API call to front end is slow and not always secure. 

Progressive Web Apps (PWAs) that format and minify code with complex nested DOMs and custom rendered elements provide another headache of layout-thrashing and DOM-tree-shaking.  

[FWAs](https://fwa.dev/) with their HTML first approach offers dynamic personalisation on server side and accessibility is to users who need this enhanced access is a priority by default. With this enhanced control comes a better CX, inclusivity, speed and even a better DX with less maintenance and breaking changes from versions of code updates.

The cons are that code must be loaded in memory in the machine and this is limiting in terms of the time taken to parse the code and then run it.

Emergent databases - Cosmos (Azure) Planet scale (RDBMS) Fauna DB (indie not-cloud coupled), DynamoDB (AWS) - fill this gap. Another challenge is infrastructure as code is complex, as Cormack highlighted. As the databases are often linked to a cloud-based service you must decide on the cloud you are going to use and go all in with AWS/ Google/ Azure, which many are not an option that business owners are willing to consider - although the option of using Kubernetes using functions as service instead of infra as service may work. The BBC has gone down this route and for more inspiration, McDonald pointed to resources [Begin](https://begin.com/) to explore the option’s suitability.

As a total aside, [fun-fun functions](https://www.youtube.com/channel/UCO1cgjhGzsSYb1rsB4bFe4Q) is a great YouTuber - sadly taking a sabbatical but a great Web 2.0 site to checkout and total inspiration for the subhead I chose for this section...he will be more sadly missed than Web 1.0 imho :-).
