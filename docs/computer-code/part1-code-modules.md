---
layout: default
title: What is a code module?
parent: What is computer code
nav_order: 6
---

# What is a code module?

Computer code is a series of instructions written in a computer programming language that tells the computer what to do. How to execute these instructions written by code writers, computer programmers, software engineers and developers.

A module is a way of encapsulating this code before it is bundled. It is the process of writing reusable code that can be exported and made available to other dependent code blocks.

Code modules are similar to modular frameworks, like Ikea furniture modules that can be reused and reconfigured. Similarly, code writers bundle blocks of code into a module that can be reused.

Bundling modules is the first step in code compilation. Modules are parsed by code readers, either in browsers or other software programs, and compiled into machine-readable code. Modules are then loaded onto HTML (Hyper Text Markup Language) files via a `<script/>` tag in the HTML file's metadata.

The code that many code writers create is not machine-readable. This blog gives you a good insight into the difference between [the difference between code writing and machine-readable-code](https://www.makeuseof.com/tag/what-is-coding/)

During the compilation of code in a module, if an error occurs, the errors are called compile-time errors. Once the application is read by a browser or any other code parser, it is called a run-time error because further errors may be discovered when the code runs on the environment that the end-user consumes the code.

Computer programmers and software engineers may have a higher skill set compared to web, mobile, or game developers, but all of us write computer code at different levels of expertise.

## What is the difference between code design patterns and a code module?

With JavaScript, the modularization of code before 2015 when the [ECMA Script 6, ECMA-6 or ES6 for JavaScript](https://en.wikipedia.org/wiki/ISO/IEC_646#ECMA-6) module was created to standardize code modules was with design patterns. There are so many different [JavaScript design patterns](https://www.digitalocean.com/community/tutorial_series/javascript-design-patterns) as this article demonstrates with a more technical explanation.

These are some of the design patterns, that I found easy to understand and that were common in the initial phases of the development of JavaScript before ECMA Script and a universal standard for writing JavaScript code emerged.

- __Global Variables__ A global variable or globals, is code written that can be accessed across all modules. They can be utilised and more dangerously overwritten in any part of the code in the project. When a problem occurs, it  is hard to debug, often leading to a confusing code-mesh called "spaghetti-code" as one set of functions used in another part of the code base gets tangled up and it is hard to untangle and figure out where the root cause of the problem lies. Common challenges with variables with a global scope are naming conflicts, security risks and debugging.

- __IIFEs__ Immediately Invoked Function Expressions, or iffies (iffy singular), as they are commonly termed, is an acronym coined by Ben Alman, who did not like the JavaScript design pattern called a self-executing anonymous function. As the function does not have a name (anonymous), the script is executed immediately which can throw multiple errors further down the line. A good article on the [technical aspects of an iffy](https://benalman.com/news/2010/11/immediately-invoked-function-expression/) by Alman, is worth referring to. Alman says his approach is to talk about an iffy, 'not in a I am right you are wrong kind of way' but to inform the reader. An amusing aside, is he admits to all of the information being 'wildly out of date' and his transference of interests from JavaScript to music.

- __AMDs__ - Asynchronous Module Definition - is a method by which code gets loaded on to a queue and is parsed. Asynchronous loading allows for smaller chunks of JavaScript files to be only as and when they are needed, improving performance when a user requests a webpage. This design pattern, allowed code writers to define what the code depended on to run. For example, if the code needs `node_modules` to run this dependency is defined by the writer somewhere in the codebase. A bundler today may automate this process, but when it started, this configuration could be manually written. The loading processes relied on an Application Programming Interface (API) call. The AMDJS, or, [AMD JavaScript API](https://github.com/amdjs/amdjs-api) defines each module and the code dependencies and then loads them on asynchronously, as the documentation more thoroughly explains.

- __CommonJS/ ServerJS__ is a code bundler that bundles code for both backend and frontend applications. Written by Kevin Dangoor,  a code writer with Mozilla 2009, it was initially named ServerJS. The vision was to build "cooler" stuff the spirit retained by the code maintainers as a [wiki on CommonJS](https://wiki.commonjs.org/wiki/CommonJS) says the intent of the group is to define a set of APIs that are useful both for non-web JavaScript implementations. More about this loose group of [CommonJS afficionadoes](https://www.blueskyonmars.com/2010/01/29/commonjs-the-first-year/) in this link from Dangoor.

- __UMDs__ - Universal Module Definition - uses a combination of AMDs and CommonJS as I was researching this further I stumbled upon [RIP Tutorials](https://riptutorial.com/javascript/example/16339/universal-module-definition--umd-) who describe UMDs much better as a pattern is used when a module needs to be imported by a number of different module loaders, the pattern itself, the tutorial explains uses an iffy, checks that the module loader (like AMD) has been loaded. Several module loaders can be loaded - so the iffy can check if both CommonJS and AMD have been loaded. The iffy, invokes a second (factory or utility) function that creates the module. RIP has a ChatGPT free search tool bar where it calls the Chat API to answer questions.

To further clarify, UMD is "a pattern used in JavaScript to create modules that can work in different environments, such as CommonJS, AMD, and the browser. It is a way to write code that can be used in different contexts without having to rewrite it. The UMD pattern is a combination of the CommonJS and AMD patterns. It checks if the module is being loaded in a CommonJS environment (such as Node.js) or an AMD environment (such as RequireJS), and if not, it creates a global variable that can be accessed from the browser," as explained by Chat.

This section demonstrates how JavaScript had no universal standards that could be followed.

## What is ECMA Script and ES6 - a code module or design pattern?

The European Computer Manufacturers' Association, [ECMA](https://en.wikipedia.org/wiki/Ecma_International), was formed in 1961 to standardise computer systems in Europe. It is a non-profit organisation that was involved in the first version of ES6 that described a universal standard to which JavaScript needed to conform to so that it was easy for browsers to parse.

Modern modularization of code patterns with ES6 and its updated versions follows the rules set by this organization. ECMAScript (ES) itself is neither a code module nor a design pattern, but a way to establish a standard for JavaScript, making it easily parsed across multiple and diverse systems and platforms.

In ES6, each JavaScript file is considered a module, enabling code modularization. The code within a file remains private unless explicitly exported and imported using the `export` and `import` keywords. While it is not a JavaScript design pattern, ES6 has syntax and grammar that need to be followed for JavaScript to be parsed correctly.

Browsers understand, with named imports of code fragments, that a file or module imported into a new file is available for use in the new file. This understanding is achieved through a bundling process called transpiling, performed by software packages like Webpack and Babel after receiving the JavaScript code.

Babel, on the other hand, is responsible for formatting modules bundled by Webpack or other bundlers back into a format required by individual browsers and their specific JavaScript parsing software. It is module-agnostic and can handle various module formats.

It's important to note that while code modules and design patterns are related to modularizing code and improving code organization, ECMAScript (ES6) is a standard that defines the syntax and features of the JavaScript language itself, promoting code modularity and providing guidelines for writing modular JavaScript code.

Module formatting with Babel turns any previous versions of ECMA script, prior to ES6 - as well as globals, iffys, AMDs and UMDs into their browser-compatible JavaScript.

Browsers like google/ Edge/ Safari/ Mozilla each has their own software in the browser that parses JavaScript. Babel will format modules that have been bundled by webpack back into the format required by each of these individual browsers and their software parsing requirements. It is module agnostic.
