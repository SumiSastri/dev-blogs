---
layout: default
title: What is the difference between code transpiling, compiling and code bundling?
parent: What is computer code
nav_order: 5
---

# What is the difference between code transpiling, compiling and code bundling?

All code is bundled first and compiled by specialised code compilers. Code is written in small modules, these modules are further bundled together into parcels or chunks so that they can be loaded as `<script>` tags into the meta-data of HTML (Hyper Text Markup Language) pages so that they can be read by browsers.

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. I think of it as a translation service.

JavaScript, for example has evolved syntax over the years into [ECMA](https://en.wikipedia.org/wiki/Ecma_International) Script Modules, see Part1 and Part2 in this series for more information. In brief, The European Computer Manufacturers' Association, has standarised the way JavaScript code is written and the ES6 (ECMA-6) Script is the basis upon which this standardisation process has evolved.

Browser parsers read one format of JavaScript in CommonJS. Browsers, can not read CommonJS modules directly, which means that developers need transpilers to bundle their code into a format that can be understood by browsers.

A transpiler (like Babel or webpack) translates CommonJS or ES6 (now at the time of written in 2022 updated to version ES13) into the browser-version of JavaScript which is older.

webpack and Babel, or transpilers of which they are many, in general first compiles, then transpiles the code and is used both as a compiler and transpiler. Most code compilers now are also transpilers. [This Scotch.io article](https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them#:~:text=Transpilers%2C%20or%20source%2Dto%2D,are%20said%20to%20target%20JavaScript.) goes a little more into the detail of how this happens.

## Transpiling and DOM-tree-shaking

As we saw in Part2, (Document Object Model) or DOM, tree-shaking is an important function of a code bundler. It removes all the code that is not being used in the DOM-tree which is a programmatic representation of all the elements of an application and how they interact with each other. 

Transpilers go one step further when they traverse the root and branches of the DOM-tree. They simplify the code back into the older version of JavaScript that browsers can read. A process called layout-thrashing or DOM-tree shaking.

The newer, more modern versions of JavaScript from ES6 to ES13 that developers write are cleaner and easier to write. This process of making the syntax easier (and sweeter for the developers) to consume is called syntactical sugar.

Transpilers now go through the process of de-sugaring (removing the syntatical sugar added by newer versions of code that make it easier for the code writer to work with) ES6 to ES13 back into the older machine-readable JavaScript.

Transpilers perform the following tasks:

1. Creating an Abstract Traversal Tree (AST) instead of the DOM
2. Parsing the language in all its modern versions
3. Reviewing the lexical construct / syntax of the modern versions
4. Translating and desugaring code back into browser-compatible JavaScript everytime a user interacts with the AST which is a representation of the DOM
5. Resolving the needs of the visit

This GitHub repo for the [Babel transpiler](https://github.com/jamiebuilds/babel-handbook/blob/master/translations/en/user-handbook.md) is a handy manual for a more indepth view.

The manual also has a part2 which is excellent as a reference to understand how transpiling works and more details on [the steps above](https://github.com/jamiebuilds/babel-handbook/blob/master/translations/en/plugin-handbook.md)

## Code source maps, debuggers, shims and polyfills

When code is transpiled, compiled, bundled and modularised for the browsers to read a source map is from the original source code written in a project. Many bundlers and transpilers perform the function of producing this source map into a version that developers can read in a browser by opening up developer tools in their browser and the console.

Every browser has it's own console, the google console is the most widely used by JavaScript code writers, though browser extensions to debug code have been written for other languages as well as JavaScript libraries and frameworks. Some of these logs may be written to directly to the computer terminal.

For example, an error has occured in the DOM tree can be traced by writing `debugger;` in the code base. The transpiler then runs through the actions of parsing the code pausing where the code breaks helping a developer to figure out where the code is breaking and providing an error message which is a hint to fix the error in the code. Developers also monitor code by writing into their scrips a `console.log()` which is a function that logs or prints to the browser console a script that a developer may write in their code to check for how, when and why code failure occurs.

A shim, is a peice of code that provides a layer of abstraction during the transpiling of code when an network call is made and therefore runs in the network layer.

A polyfill, is a type of shim, that transpiles modern HTML/ CSS (Cascading Style Sheets) and ES6 code back into the more basic versions to ensure browser compatability.

Babel is a polyfill that uses CoreJS and babel-regenerator-runtime to polyfill (made backwards compatible) older browsers to newer language syntax.

CoreJS is an ECMA script polyfill library. There are several such libraries. CoreJS is the most flexible/ trusted polyfill.

Other shims have a more focused scope. For example, only ES5/ ES6  versions of JavaScript use a dated JavaScript design pattern called Global Variables - discussed in Part2 of this series - to transpile code back to even older versions of JavaScript that browsers read.
