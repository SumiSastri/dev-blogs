---
layout: default
title: What is a code module
nav_order: 2
has_children: true
---

# What is a code module

A module is a way of encapsulating code before it is bundled. It is a way of writing reusable code that can be exported and made available to other dependent code blocks.

Code modules are just like any other modular framework - Ikea makes furniture modules that you can reuse and reconfigure. Similarly, code writers bundle blocks of code into a module that can be reused.

Bundling modules is the first step in code compiling. Modules are parsed by code readers - in browsers or in other software programes - and compiled into machine-readable code.

The code that code writers create is not machine-readable. This blog gives you a good insight into [the difference between code writing and machine-readable-code](https://www.makeuseof.com/tag/what-is-coding/)

While the code is being compilied in a module and an error occurs, the errors are called compile-time errors. Once the application is read by a browser or any other code parser, it is called a run-time error because the code may compile in compile time but further errors may be discovered when the code runs on the environment that the end-user consumes the code.

## Code design patterns vs code modules

With JavaScript, the modularization of code before 2015 when the ES-6 module was created to standardize code modules was with design patterns. These are some of the design patterns that were common in the initial phases of the development of JavaScript.

- globals - global code across all modules (hard to debug)
- IIFEs - immediately invoked function expressions
- CommonJS - often used with Browserify (a bundler of code)
- AMDs - async module definition - better supports aysnc loading of modules uses RequireJs Dojo Toolkit and ScriptManJs
- UMDs - universal module definition (mixes CommonJS with AMDs)
- SystemJS
- ES6-ES13 (at the time of writing 2022)

CommonJS - simple and readable. A module is declared in a file and exported so that it can be imported again (used in NodeJs) the default export allows the module to be reconsumed by another file in the past used with a bundler called RequireJS
[ECMA](https://en.wikipedia.org/wiki/Ecma_International) Script Modules.

## ECMA Script Modules

Modern modularization of code patterns with ECMA (The European Computer Manufacturers' Association) Script follow rules set by the organisation. Now, each JavaScript file is considered a module. The code in that file remains private unless explicitly exported and imported using the `export` and `import` keyword.

Browsers understand, with named imports of the code fragments, that this file or module that has been imported into a new file is available for use in the new file. They understand this because of a process of bundling called transpiling rather than compiling which software packages like Webpack and Babel perform once the JavaScript code is received by these transpilers.

Webpack bundles ECMA6- HTML, CSS, images, styles and fonts in one and is a preferred bundler of JavaScript modules. 

It has hot-reloader which enables you to see your code in the browser immedately. This is because it does not lose client side data (or state). Very good for multi-step forms as auto-fill and form data (state) saved.

The ability to bundle different modules/ packages/ code together is known as code splitting or bundle splitting.

Module formatting with Babel turns ECMA script/ globals/ IFFEs/ AMDs/UMDs into their browser-compatible JavaScript. 

Browsers like google/ edge/ safari/ mozilla each has their own software in the browser that parses JavaScript. Babel will format modules that have been bundled by Webpack back into the format required by each of these individual browsers and their software parsing requirements. It is module agnostic.
