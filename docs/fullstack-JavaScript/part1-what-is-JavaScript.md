---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: What is JavaScript?
last_updated: Feb 2024
---

# What is JavaScript?

Created by Brenden Eich in 1996, JavaScript was written for Netscape under the name Mocha, then changed to  "LiveScript". 

Microsoft renamed LiveScript for Explorer calling it JScript, or JavaScript. Standardising JavaScript fell to the hands of ECMA and JavaScript is also known as ECMA Script or ES5, ES6, ES7, ES8 and ES9 which are are updated versions of JavaScript. 

"JavaScript" is a trademark of Oracle Corporation in the United States. It is used under license from Mozilla and in JS-engines in browsers - V8 (Google), Chakra(Microsoft), SpiderMonkey(Firefox).

JavaScript is officially managed by Mozilla Foundation, and new language features are added periodically. However, only some JavaScript engines support these new features. Known as JS as well as Vanilla JavaScript - refering to JS without frameworks or libraries, JavaScript is now one of the most popular scripting languages.

## Why is JavaScript considered a loosely-typed script?

JavaScript has some unique features. As a programming language, JavaScript is a dynamic and loosely typed script. It is opposite of a dynamic language is a strongly typed language. The characteristics of a loosely typed language are information, typically stored temporarily in a variable can be mutated. In a strongly typed language once a variable is declared with a value that value can not be changed or reassigned to any other value. This is not true of JavaScript, to enforce strict typing a superscript of JavaScript, or TypeScript can enforce strict typing.

## Why is JavaScript considered an interpreted language?

The second characteristic of JavaScript is that it is read (parsed or interpreted) by JavaScript engines in browsers (Chakra, V8 and SpiderMonkey). Other languages are compiled by processors. As it is parsed by the JavaScript engines in browsers. JavaScript needs pre-processors to build and translate code back into a parseable form by JavaScript transpilers, compilers and code package builders. This is why JavaScript is considered an interpreted language.

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

JavaScript "listens" to these events and "handles" them using asynchronous callback functions.

For example an `onClick` event is emitted and listened to, once this event occurs, the developer can write a `handleClick` call back function - which can direct the user to another page, send form information to the backend, reveal a hidden part of the page that can only be revealed if the button is clicked.

This process of listening to an event, responding to an event with a call back function, and the call back function returning a result asynchronously, is called the event-loop.

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

__Further reading__

- More about [JavaScript on Wikipedia](https://en.wikipedia.org/wiki/JavaScript)

- [History of JavaScript](https://auth0.com/blog/a-brief-history-of-javascript/)

- [Improve the readability of your code ](https://dzone.com/articles/10-tips-how-to-improve-the-readability-of-your-sof)

- [MDN Tutorial](https://developer.mozilla.org/en-US/docs/Learn/JavaScript)

- [The modern JavaScript Tutorial](http://javascript.info)

- [JavaScript tutorial W3 Schools](https://www.w3schools.com/js/default.asp) 

- [JavaScript Syntax - W3 Schools](https://www.w3schools.com/js/js_conventions.asp)

- [What is JavaScript](https://www.dofactory.com/tutorial/what-is-javascript)

- [JavaScript the Big Picture - Premium PluralSight Course](https://app.pluralsight.com/library/courses/javascript-big-picture/table-of-contents)
