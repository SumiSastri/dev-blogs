---
layout: default
title: What is Babel?
parent: What is computer code
nav_order: 6
---

# What is Babel?

As a short recap, for many years there was no innovation on JavaScript code. This made it almost obsolete. The first version of JavaScript - ES1 - was written by Netscape's, Brenden Eich, in 1997 apocraphally in 10-days...

As the the browser wars broke out every computer manufacturer wanted their own browser and the race to grab a share of the browser market led to some rapid updates ES2 - 1998, ES3 - 1999 and then a long lull ES5 - 2009 and the more standardised version ES6- 2015 with ES13 (current-2022).

With The European Computer Manufacturers' Association, [ECMA's](https://en.wikipedia.org/wiki/Ecma_International), intervention, JavaScript now is maintained and updated regularly. Early modules of JavaScript still run on the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, and newer modules need to be transpiled so that there is uniformity over the code base for browsers to parse(read/ understand) the code.

There are over 100 languages that are transpiled back into JavaScript today. TypeScript and Babel are 2 popular transpilers, although TypeScript is a superscript of JavaScript, it has to be transpiled back into JavaScript and the older versions that browsers can read. TypeScript's main function is to make JavaScript, which is loosely typed, into a strongly-typed version or super-script. Babel, on the other hand, is primarily a transpiler.

In Part1, Part2 and Part3 of this series some of the core concepts behind code modularisation, bundling, compiling and transpiling are discussed in more detail. In brief, computer code has to be chunked into smaller bundles, compiled together and then converted or transpiled from the more modern versions to the older versions browsers can read.

Created by an Australian software developer, Sebastian McEnzie, Babel, is a transpiler that tanspiles ES5 to ES13 to older verisons.

You can think of Babel as a translator. Versions of JavaScript above ES6 offers developers easier and simpler syntax to write code. They can improve efficieny but the trade-off is that due to the fragmentation of the browser market and lack of will to standarise browser parsing of JavaScript, these features are unrecognizable in modern day browsers.

To find a balance between compatibility and development convenience and efficiency, Babel was developed and has been widely adopted by package builders and managers.

Programmers can now write code with the syntatical sugar, that ES6 and later versions of JavaScript offer, and then use Babel to translate them into code that browsers can understand.

Syntactical sugar is syntax added to a code that makes it easy to work with, transpiling with tools such as Babel, reverses this process and makes the process more basic for binary computation and machine-readable code.

## Other options to Babel as a JavaScript transpiler

Babel is not the only JavaScript transpiler in the market. It is a polyfill, which a code-patch or shim.

[Kangex](https://kangax.github.io/compat-table/es6/) is a resource that allows you to check all polyfills, shims and libraries for browser compatiblity. Babel ranks better than most other libraries and packages compared to other shims on this list.

[Browserstack](https://www.browserstack.com/) - gives you a  list.

Other transpilers are google's Traceur - this is an experimental transpiler and not as feature-rich as Babel.

TypeScript has a transpiler and sometimes is compared to Babel but it is a language - a superscript of JavaScript. The primary function of TypeScript is to transpile TypeScript to JavaScript, it happens to have a transpiler but that is not its core function. Babel is not a language, its core function is transpiling.

Babel, itself is is made up of several Node packages. In Part2 you can see a brief explanation of npm - Node Package Manager - and Node. To paraphrase, NodeJs packages code into programs and these pre-packaged libraries are available on npm.

It is a pattern you will see in many libraries. For example, Babel which is now in Version 6 of its package-management lifecycle, has baked in 2 key libraries (amongst others) - `babel-core` and `babel-cli` it has further plugins, transformers, task runners, presets. These have to be configured in a dotfile - `.babelrc` in the root of a project with presets depending on how you use Babel.
