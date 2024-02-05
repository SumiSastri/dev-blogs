---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: A short history of JavaScript
last_updated: Feb 2024
---

# A short history of JavaScript

Created by Brenden Eich in 1996, JavaScript was written for Netscape under the name Mocha, then changed to  "LiveScript". 

Microsoft renamed LiveScript for Explorer calling it JScript, or JavaScript. Standardising JavaScript fell to the hands of ECMA and JavaScript is also known as ECMA Script or ES5, ES6, ES7, ES8 and ES9 which are are updated versions of JavaScript. 

## What is JavaScript

"JavaScript" is a trademark of Oracle Corporation in the United States. It is used under licenseby Mozilla and in JS-engines in browsers - V8 (Google), Chakra(Microsoft), SpiderMonkey(Firefox).

JavaScript is officially managed by Mozilla Foundation, and new language features are added periodically. However, only some JavaScript engines support these new features.

As a programming language, JavaScript is a dynamic and loosely typed script. It is read (parsed) by JavaScript engines in browsers (Chakra, V8 and SpiderMonkey) and the NodeJS run-time environment in the backend.

JavaScript needs the HTML-DOM structure to operate in. The Hyper Text Markup Language (HTML) creates documents on a page, each HTML element is considered a node in the Document Object Model (DOM). The DOM has a tree structure, with branches, leaves and nodes. 

JavaScript is invisible to the user until it is injected into the the HTML-DOM tree node. This process is known as hydration.

JavaScript is therefore considered DOM and node dependent in the front end.

## Why is JavaScript considered a non-blocking, single-threaded language?

JavaScript has no concept of input or output. To enforce structure on JavaScript, Typescript, a JavaScript superscript defines types as inputs or outputs. This is why JavaScript is considered a script versus a traditional software engineering programme.

Software programmes, are defined by processes that are parsed by a processor. The compute process of a processor reads a standard input and a standard output. The output can be a success message or an error.

Processes are processed serially, concurrently or parallely to produce an output. Several threads, or queues or spawns of a parent job are created by the processing of jobs.

There is a hierarchy of processes (called Nice) where the lower the quotient, the quicker the job is processed.

Jobs can be processed in the foreground, background and a foreground job can interupt or block the continuation of a job process in the background.

JavaScript is considered a non-blocking, single-threaded language because of this lack of a sense of input-output. All jobs are processed by a single thread that is never blocked.

Jobs are processed with the use of event-listeners. An event occurs (rather than a standard input being defined), this triggers a callback function. The function handles changes to the event returning the mutation of this event (instead of a standard output).

This is known as the JavaScript event loop.

The asynchronous nature of these callback functions means that several inputs can be handled simultaneously, and therefore, a single thread can handle multiple requests in a task queue, making the language non-blocking.

## How does the event loop work in the frontend?

In the frontend where users interact with an application, inputs such as clicks, mouse movements, keypad movements are "listened" to and "handled" by callback functions. 

JavaScript, as a language may evolve with newer versions, but browsers do not always upgrade versions as quickly. Therefore compile time code builders like webpack, Babel and ESBuild are used to compile and transpile code back into the older versions of JavaScript that browsers may use.

The frontend is therefore more dependent on the browser environment while JavaScript server-side is updated with every NodeJS long-term-support (LTS) update.

The browser and JavaScript incompatibility issues, have led to a series of shims and polyfills used to patch up the discrepancies in build, compile and runtime code environments.

See the section on computer code for more information.


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

## RESOURCES

- More about JavaScript on Wikipedia [https://en.wikipedia.org/wiki/JavaScript]

- History of JavaScript a long and detailed read[https://auth0.com/blog/a-brief-history-of-javascript/]

- JavaScript tutorial & Style Guide W3 Schools [https://www.w3schools.com/js/default.asp] [https://www.w3schools.com/js/js_conventions.asp]

- Improve the readability of your code [https://dzone.com/articles/10-tips-how-to-improve-the-readability-of-your-sof]

- MDN Tutorial [https://developer.mozilla.org/en-US/docs/Learn/JavaScript]

- The modern JavaScript Tutorial [http://javascript.info]
