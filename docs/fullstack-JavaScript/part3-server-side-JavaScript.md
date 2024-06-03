---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: Server-side JavaScript
last_updated: Feb 2024
---

# Server-side JavaScript

As we have seen in part 1, NodeJS  or Node, is an opensource, cross-platform runtime environment created by Ryan Dahl. It is the main gateway as a runtime environment to server-side JavaScript.

Initially, it was backed by large corporations, but within a few years, it decoupled from corporate backers to become an opensource project. 

Node works at the network level where HTTP (hyper text transfer protocol) calls are made from the frontend of the application to the backend services. As the code simply is run in this network layer of an application, Node is considered a runtime environment. Code is not compiled, bundled or transpiled here. 

That process happens either in the frontend of the application or the backend post the HTTP call stage.

Full stack JavaScript apps may use a server, such as ExpressJS or Express, to link frontend user interfaces with backend files, databases and the execution of jobs and processes.

To do this, Dahl took the JavaScript code on the browser (Chrome's V8 engine) and repackaged it to make it work server-side with Libuv, which is a mutli-platform support library primarily built for Node focusing on asynchronous input/output (I/O).

Ryan Dahl, added APIs (Application Protocol Interfaces) for things JavaScript couldn't do in the browser. 

This includes reading and writing files, making and receiving network requests, as well as encrypting and decrypting data. Node executes JavaScript code inside of the V8 JavaScript engine so it still is a script and interpreted languages even if the behaviour has changed to include server-side network jobs and processes.

As a result, Node is not a great solution where CPU (central processor unit) tasks are required as it still works on an event-driven design pattern that relies on running callback functions to handle events. CPUs require the standard-input to return standard-outputs when jobs are processed. 

Node on the other hand quickly "handles" an event with a callback function. Node, requires JavaScript as a programming language to function. As JavaScript is loosely typed, you may need [TypeScript to transform JavaScript in the Node environment](https://nodejs.org/en/learn/getting-started/nodejs-with-typescript) to a more strictly typed language. 

TypeScript, is simply a superscript of JavaScript, so if your developer team has a fundamental dislike for loosely typed languages such as JavaScript, this may not be the optimal solution server-side. 

How much JavaScript do you need to know to use Node is a useful resource on the Node docs site to figure out whether you would like to [invest the time to learn JavaScript to use Node](https://nodejs.org/en/learn/getting-started/how-much-javascript-do-you-need-to-know-to-use-nodejs)
]
Java, dotNet, PHP-Symphony, Ruby/Rails and Python are some options that are available as alternatives, server-side.

## NodeJs more than just a server-side runtime environment

Node is often used in microservices and APIs. The `createServer()` method allows you to create a quick server that will listen to HTTP calls. 

In the section [anatomy of an HTTP call in the Node official docs](https://nodejs.org/en/learn/modules/anatomy-of-an-http-transaction), you can see how requests and responses are handled with this simple set up.

However, you can also use 3rd party servers and microservices to link infrastructure from Amazon Web Services (AWS), google cloud services (GCS), Microsoft's Asure and many other infrastructure services as Node can be used cross-platform. Serverless functions or lambdas can be used to connect services to cloud-based infrastructure providers.

CLI (command line services) use Node, which are not server-side applications. Webpack, Babel, ESLint use Node, as well as frontend packages that bundle code like Gulp, React, NextJS all use node packages with the node package manager distribution system and have `node_modules` as part of the package build process for client-side applications.

Many desktop applications use Node, with [ElectronJs](https://www.electronjs.org/), such as Teams and even code editors like Visual Studio Code and Atom.


### Further reading

- The [V8 engine docs](https://v8.dev/docs)

- More on [Libuv](https://docs.libuv.org/en/v1.x/)