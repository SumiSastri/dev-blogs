---
layout: default
parent:  Fullstack JavaScript
nav_order: 15
title: What is JavaScript?
last_updated: Feb 2024
---

# What is JavaScript?

Created by Brenden Eich in 1996, JavaScript, is a programming language, written for Netscape under the name Mocha, then changed to  "LiveScript". 

Microsoft renamed LiveScript for Explorer calling it JScript, or JavaScript. Standardising JavaScript fell to the hands of ECMA (The European Computer Manufacturers Association) and JavaScript is also known as ECMA Script or ES5, ES6, ES7, ES8 and ES9 which are are updated versions of JavaScript. 

"JavaScript" is a trademark of Oracle Corporation in the United States. It is used under license from Mozilla and in JS-engines in browsers - V8 (Google Chrome and Microsoft Edge) and SpiderMonkey(Firefox).

JavaScript is officially managed by Mozilla Foundation, and new language features are added periodically. However, only some JavaScript engines support these new features. Known as JS as well as Vanilla JavaScript - refering to JS without frameworks or libraries, JavaScript is now one of the most popular scripting languages.

## Why is JavaScript considered a loosely-typed script?

JavaScript has some unique features. As a programming language, JavaScript is a dynamic and loosely typed script. It is opposite of a dynamic language is a strongly typed language. The characteristics of a loosely typed language are information, typically stored temporarily in a variable can be mutated. In a strongly typed language once a variable is declared with a value that value can not be changed or reassigned to any other value. This is not true of JavaScript, to enforce strict typing a superscript of JavaScript, or TypeScript can enforce strict typing.

## Why is JavaScript considered an interpreted language or script?

The second characteristic of JavaScript is that it is read (parsed or interpreted) by JavaScript engines, primarily V8 in browsers. Other languages are compiled by processors. As it is parsed by the JavaScript engines in browsers. JavaScript needs pre-processors to build and translate code back into a parseable form by JavaScript transpilers, compilers and code package builders.

[For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).

This is why JavaScript is considered an interpreted language.  It is also considered a language that scripts the behavior of the browser, hence the name JavaScript. Eich added the word Script to the end of Java - a popular language at the time - but that is where the ressemblance between the two languages starts and stops.

JavaScript, as a language may evolve with newer versions, but browsers do not always upgrade versions as quickly. Therefore compiletime code builders like webpack, Babel and ESBuild are used to compile and transpile code back into the older versions of JavaScript that browsers may use.

The frontend is therefore more dependent on the browser environment while JavaScript server-side is updated with every NodeJS long-term-support (LTS) update.

The browser and JavaScript incompatibility issues, have led to a series of shims and polyfills used to patch up the discrepancies in build, compile and runtime code environments.

This mutation of JavaScript results in runtime, buildtime and compiletime code with errors that could be different in each stage of the code mutation.

It makes the debugging of code annoying to many and the avoidance or dislike of JavaScript by some developers.

## Why is JavaScript considered DOM and node dependent?

A third characteristic of JavaScript, on the frontend is that it needs the HTML-DOM tree to operate in and is considered DOM and node dependent. 

The Document Object Model (DOM) is an API (Application Protocol Interface) that  queries Hyper Text Markup Language (HTML) and CSS (Cascading Style Sheets). It takes these files and abstracts out an object, which is the DOM-tree which represents of all the HTML elements on a page in a tree-like structure.  

JavaScript accesses this DOM-tree and then is run on each node (the individual HTML elements on a page) and then mutates or changes the node's behaviour. The DOM-tree is mutated or morphed, node by node (or HTML element by HTML element) in this process of hydration. To hydrate the tree, JavaScript has to go through a process of tree-thrashing or layout-thrashing, where it scans the tree to see which nodes require changes. It applies these changes through the hydration process, and is only then visible to the user.

## Why is JavaScript considered a non-blocking, single-threaded language?

A fourth, and unique characteristic of JavaScript is that it has no concept of input or output. To enforce structure on JavaScript, Typescript, a JavaScript superscript defines types as inputs or outputs. This is why JavaScript is considered a script versus a traditional software engineering programme.

Software programmes, are defined by processes that are compiled by a processor. The compute process of a processor takes a standard input and returns a standard output. The output can be a success message or an error.

Processes are processed serially, concurrently or parallely to produce an output. Several threads, or queues or spawns of a parent job are created by the processing of jobs.

There is a hierarchy of processes (called Nice) where the lower the quotient, the quicker the job is processed.

Jobs can be processed in the foreground, background and a foreground job can interupt or block the continuation of a job process in the background.

JavaScript is considered a non-blocking, single-threaded language because of this lack of a sense of input-output. All jobs are processed by a single thread that is never blocked.

Jobs are processed with the use of event-listeners. An event occurs (rather than a standard input being defined), this triggers a callback function. The function handles changes to the event returning the mutation of this event (instead of a standard output).

This is known as the JavaScript event loop.

The asynchronous nature of these callback functions means that several inputs can be handled simultaneously, and therefore, a single thread can handle multiple requests in a task queue, making the language non-blocking.

## How does the event loop work in the frontend?

A fifth characteristic of JavaScript, is that it is event-driven through the stack. As we have seen above, JavaScript does not have a concept of processing jobs. Instead, in the frontend where users interact with an application, inputs such as clicks, mouse movements, keypad movements - these are termed as events in JavaScript.

Events build up in a task queue, as JavaScript is a single-threaded non-blocking programming lanugage, it is able to deal with multiple tasks on the task queue driven by "listening" to these events and "handling" them using asynchronous callback functions.

For example an `onClick` event is emitted and listened to, once this event occurs, the developer can write a `handleClick` call back function - which can direct the user to another page, send form information to the backend, reveal a hidden part of the page that can only be revealed if the button is clicked.

This process of listening to an event, responding to an event with a call back function, and the call back function returning a result asynchronously, is called the event-loop.

For more detail on the event-loop, MDN documentation [https://developer.mozilla.org/en-US/docs/Web/JavaScript/EventLoop]

## How does the event loop work server-side?

NodeJS is an opensource, cross-platform runtime environment created by Ryan Dahl. He demo'd the workings of Node, as it is more commonly termed, at a conference, using JavaScript as a language.

Node is a preferred environment in the network layer of computer processes. Just as JavaScript needs the HTML-DOM nodes to hook on to and hydrate, Node requires a server to hook onto and connect backend data services in the network layer of an application.

You can build a simple server using Node and some basic JavaScript to link to the Node server.

Full stack JavaScript apps may use a server, such as ExpressJS or Express, to link frontend user interfaces with backend files, databases and the execution of jobs and processes.

To do this, Dahl took the JavaScript code on the browser (Chrome's V8 engine and the Blink rendering Engine) and repackaged it to make it work server-side. 

Dahl adopted JavaScript's non-blocking, [single-threaded asynchronous features in the execution of the event-loop in runtime](https://nodejs.org/en/docs/guides/blocking-vs-non-blocking/).

JavaScript events are "emitted" with an open or closed socket in the network layer. These events are listened to and callback functions applied to execute the instructions and return an output.

Node is good for apps that require  a high volume of short messages in real-time operations (chat-bots, facial recognition, conferencing, gaming, e-commerce) that need real-time runners between the frontend JavaScript code and the backend database. 

Trello, googledocs, DropBox use Node as this ability to listen to events and respond quickly is vital.

Node is used as an environment to run HTTP (hypertext transfer protocols) requests. HTTP requests are run to fetch (get) documents so that they can be read. If these documents need to be created and updated, write operations are required. And finally in the cycle, if these documents need to be deleted they can be permanantly destroyed.

This cycle CRUD (create-read-update-delete) is the basis of an HTTP, API call (application protocol interface call).

JavaScript events in a Node environment on an active server, listen to the event when the socket is opened for an API call, and a callback function takes in the data or payload from the event and transfers it to a variety of file systems and data streams. 

This is the foreground process that spawns several child-processes to the backend services. These backend services with a callback function return the data requested back via the server to the frontend.

Node therefore, as you can see is used in runtime - the time it takes for the data to run in the network environment - it is not a language. Node may use HTTP runners (like Axios, or the native JavaScript `fetch` method with the fetchAPI) to transport this data in the network layer.

Node is largely used to limit the languages that a team uses to JavaScript, hence making teams cross-functional - this is not possible if the backend is run on PHP, Scala, Java and other non-JavaScript languages.

This is why many developers like Node because it's lightweight and you can write your frontend and backend in the same language and share libraries, reduce code write times and tech stack adoption efforts.

## What is the difference between code design patterns and a code module?

With JavaScript, the modularization of code before 2015 when the [ECMA Script 6, ECMA-6 or ES6 for JavaScript](https://en.wikipedia.org/wiki/ISO/IEC_646#ECMA-6) module was created to standardize code modules was with design patterns. ECMA is the acronym for The European Computer Manufacturers' Association. 

Modules are then loaded onto HTML (Hyper Text Markup Language) files via a `<script/>` tag in the HTML file's metadata.

There are so many different [JavaScript design patterns](https://www.digitalocean.com/community/tutorial_series/javascript-design-patterns) as this article demonstrates with a more technical explanation.

These are some of the design patterns, that I found easy to understand and that were common in the initial phases of the development of JavaScript before ECMA Script and a universal standard for writing JavaScript code emerged.

- __Global Variables__ A global variable or globals, is code written that can be accessed across all modules. They can be utilised and more dangerously overwritten in any part of the code in the project. When a problem occurs, it  is hard to debug, often leading to a confusing code-mesh called "spaghetti-code" as one set of functions used in another part of the code base gets tangled up and it is hard to untangle and figure out where the root cause of the problem lies. Common challenges with variables with a global scope are naming conflicts, security risks and debugging.

- __IIFEs__ Immediately Invoked Function Expressions, or iffies (iffy singular), as they are commonly termed, is an acronym coined by Ben Alman, who did not like the JavaScript design pattern called a self-executing anonymous function. As the function does not have a name (anonymous), the script is executed immediately which can throw multiple errors further down the line. A good article on the [technical aspects of an iffy](https://benalman.com/news/2010/11/immediately-invoked-function-expression/) by Alman, is worth referring to. Alman says his approach is to talk about an iffy, 'not in a I am right you are wrong kind of way' but to inform the reader. An amusing aside, is he admits to all of the information being 'wildly out of date' and his transference of interests from JavaScript to music.

- __AMDs__ - Asynchronous Module Definition - is a method by which code gets loaded on to a queue and is parsed. Asynchronous loading allows for smaller chunks of JavaScript files to be only as and when they are needed, improving performance when a user requests a webpage. This design pattern, allowed code writers to define what the code depended on to run. For example, if the code needs `node_modules` to run this dependency is defined by the writer somewhere in the codebase. A bundler today may automate this process, but when it started, this configuration could be manually written. The loading processes relied on an Application Programming Interface (API) call. The AMDJS, or, [AMD JavaScript API](https://github.com/amdjs/amdjs-api) defines each module and the code dependencies and then loads them on asynchronously, as the documentation more thoroughly explains.

- __CommonJS/ ServerJS__ is a code bundler that bundles code for both backend and frontend applications. Written by Kevin Dangoor,  a code writer with Mozilla 2009, it was initially named ServerJS. The vision was to build "cooler" stuff the spirit retained by the code maintainers as a [wiki on CommonJS](https://wiki.commonjs.org/wiki/CommonJS) says the intent of the group is to define a set of APIs that are useful both for non-web JavaScript implementations. More about this loose group of [CommonJS afficionadoes](https://www.blueskyonmars.com/2010/01/29/commonjs-the-first-year/) in this link from Dangoor.

- __UMDs__ - Universal Module Definition - uses a combination of AMDs and CommonJS as I was researching this further I stumbled upon [RIP Tutorials](https://riptutorial.com/javascript/example/16339/universal-module-definition--umd-) who describe UMDs much better as a pattern is used when a module needs to be imported by a number of different module loaders, the pattern itself, the tutorial explains uses an iffy, checks that the module loader (like AMD) has been loaded. Several module loaders can be loaded - so the iffy can check if both CommonJS and AMD have been loaded. The iffy, invokes a second (factory or utility) function that creates the module. RIP has a ChatGPT free search tool bar where it calls the Chat API to answer questions.

To further clarify, UMD is "a pattern used in JavaScript to create modules that can work in different environments, such as CommonJS, AMD, and the browser. It is a way to write code that can be used in different contexts without having to rewrite it. The UMD pattern is a combination of the CommonJS and AMD patterns. It checks if the module is being loaded in a CommonJS environment (such as Node.js) or an AMD environment (such as RequireJS), and if not, it creates a global variable that can be accessed from the browser," as explained by Chat.

This section demonstrates how JavaScript had no universal standards that could be followed.

## What is ECMA Script and ES6 - a code module or design pattern?

[ECMA](https://en.wikipedia.org/wiki/Ecma_International), was formed in 1961 to standardise computer systems in Europe. It is a non-profit organisation that was involved in the first version of ES6 that described a universal standard to which JavaScript needed to conform to so that it was easy for browsers to parse.

Modern modularization of code patterns with ES6 and its updated versions follows the rules set by this organization. ECMA Script (ES) itself is neither a code module nor a design pattern, but a way to establish a standard for JavaScript, making it easily parsed across multiple and diverse systems and platforms.

In ES6, each JavaScript file is considered a module, enabling code modularization. The code within a file remains private unless explicitly exported and imported using the `export` and `import` keywords. While it is not a JavaScript design pattern, ES6 has syntax and grammar that need to be followed for JavaScript to be parsed correctly.

Browsers understand, with named imports of code fragments, that a file or module imported into a new file is available for use in the new file. This understanding is achieved through a bundling process called transpiling, performed by software packages like Webpack and Babel after receiving the JavaScript code.

Babel, on the other hand, is responsible for formatting modules bundled by Webpack or other bundlers back into a format required by individual browsers and their specific JavaScript parsing software. It is module-agnostic and can handle various module formats.

It's important to note that while code modules and design patterns are related to modularizing code and improving code organization, ECMAScript (ES6) is a standard that defines the syntax and features of the JavaScript language itself, promoting code modularity and providing guidelines for writing modular JavaScript code.

Module formatting with Babel turns any previous versions of ECMA Script, prior to ES6 - as well as globals, iffys, AMDs and UMDs into their browser-compatible JavaScript.

Browsers like google/ Edge/ Safari/ Mozilla each has their own software in the browser that parses JavaScript in their JavaScript engines within the browser architecture. [For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).

Babel will format modules that have been bundled by webpack back into the format required by each of these individual browsers and their software parsing requirements. It is module agnostic.


## Package management and JavaScript versioning

Unlike other software packages, JavaScript has no major versions and package updates. ECMA as we have seen in the beginning of this section, releases annual updates of JavaScript.

ES6 was the first major update and other updates (currently now ES10) can be checked for browser compatibility on the [frontend](www.canIuse.com) and the [backend](www.node.green). Most releases are backwards compatible, unlike many other packages which when they release major changes result in breaking changes.

The other ways that JavaScript natively supports backward compatibility is with shims and polyfills which are used by JavaScript builders, compilers and transpilers like webpack, Babel and ES-Build.

## Is JavaScript still just a scripting language?

With the use of JavaScript through the stack, it no longer can be considered just a scripting language for browsers, but the name has stuck even if the behaviour and language has evolved.


### Further reading 

- [JavaScript on Wikipedia](https://en.wikipedia.org/wiki/JavaScript)

- [History of JavaScript](https://auth0.com/blog/a-brief-history-of-javascript/)

- [Improve the readability of your code ](https://dzone.com/articles/10-tips-how-to-improve-the-readability-of-your-sof)

- [MDN Tutorial](https://developer.mozilla.org/en-US/docs/Learn/JavaScript)

- [The modern JavaScript Tutorial](http://javascript.info)

- [JavaScript tutorial W3 Schools](https://www.w3schools.com/js/default.asp) 

- [JavaScript Syntax - W3 Schools](https://www.w3schools.com/js/js_conventions.asp)

- [What is JavaScript](https://www.dofactory.com/tutorial/what-is-javascript)

- [JavaScript the Big Picture - Premium PluralSight Course](https://app.pluralsight.com/library/courses/javascript-big-picture/table-of-contents)
