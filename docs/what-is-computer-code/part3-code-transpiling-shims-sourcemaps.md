---
layout: default
title: What is the difference between code transpiling, compiling and code bundling
parent: What is computer code
nav_order: 2
---

# What is the difference between code transpiling, compiling and code bundling

All code is bundled first and compiled by specialised code compilers.

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. I think of it as a translation service.

JavaScript, for example has evolved syntax over the years into [ECMA](https://en.wikipedia.org/wiki/Ecma_International) Script Modules, see Part 1 in this series for more information. 

However, browser parsers read one format of JavaScript in Common JS. A transpiler (like babel or webpack) translates this more modern version of JavaScript into the browser-version of JavaScript which is older. Webpack, therefore first compiles, then transpiles the code and is used both as a compiler and transpiler. Most code compilers now are also transpilers.

[This Scotch.io article](https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them#:~:text=Transpilers%2C%20or%20source%2Dto%2D,are%20said%20to%20target%20JavaScript.) goes a little more into the detail of how this happens.

## Transpiling and the DOM

In the process of transpiling, transpilers handle expensive Document Object Model (DOM) traversal by de-sugaring (removing the syntatical sugar added by newer versions of code that make it easier for the code writer to work with). 

Syntactical sugar is syntax added to a code that makes it easy to work with, transpiling reverses this process and makes the process more basic for binary computation and machine-readable code.

Transpilers perform the following tasks:

1. Creating an Abstract Traversal Tree (AST)
2. Parsing the language
3. Reviewing the lexical construct / syntax
4. Clocking visitors to the node - everytime there is an interaction with the node in the DOM-AST - a node is every element of HTML (hyper-text-mark-up) on a page. For more information, the section Learn to Code Getting Started, should be a good background and context-setting read.
5. Resolving the needs of the visit

This GitHub repo for the [Babel transpiler](https://github.com/jamiebuilds/babel-handbook/blob/master/translations/en/user-handbook.md) is a handy manual for a more indepth view.

The manual also has a part2 which is excellent as a reference to understand how transpiling works and more details on [the steps above](https://github.com/jamiebuilds/babel-handbook/blob/master/translations/en/plugin-handbook.md)

## Code source maps, shims and polyfills

When code is transpiled, compiled, bundled and modularised for the browsers to read a source map is created that you can read in the browser console.

This helps in debugging and checking your code is compiling correctly on the browser. You can use the `debugger()` method to do this.

If you write `debugger;` in your code you will be able to see where the code is breaking by the `console.log()` function you have written - a log is a written record of your code which is logged to the browser's console. Every browser has it's own console, the Google console is the most widely used by JavaScript code writers, though browser extensions to debug code have been written for other languages as well as JavaScript libraries and frameworks. Some of these logs may be written to directly to the computer terminal.

A shim, is a peice of code that provides a layer of abstraction during the transpiling of code when an network call is made and therefore runs in the network layer.

A polyfill, is a type of shim, that transpiles modern HTML5/ CSS3 and ES6 code back into the more basic versions to ensure browser compatability.

Babel is a polyfill that uses CoreJS and babel-regenerator-runtime to polyfill (made backwards compatible) older browsers to newer language syntax.

CoreJS is an ECMA script polyfill library. There are several such libraries. CoreJS is the most flexible/ trusted polyfill.

Other shims have a more focused scope - only ES5/ ES6 and sometimes use global name spaces which is a trade off. Global namespaces are more unstable (unreliable). More bugs and time wasted in short.

Kangex - the best support for Babel compared to other shims. [Browserstack](https://www.browserstack.com/) - gives you a        list.
