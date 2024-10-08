<!-- ---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: 
last_updated: Feb 2024
--- -->

## Code source maps, debuggers, shims and polyfills

When code is transpiled, compiled, bundled and modularised for the browsers to read a source map is from the original source code written in a project. Many bundlers and transpilers perform the function of producing this source map into a version that developers can read in a browser by opening up developer tools in their browser and the console.

Every browser has it's own console, the google console is the most widely used by JavaScript code writers, though browser extensions to debug code have been written for other languages as well as JavaScript libraries and frameworks. Some of these logs may be written to directly to the computer terminal.

For example, an error has occured in the DOM tree can be traced by writing `debugger;` in the code base. The transpiler then runs through the actions of parsing the code pausing where the code breaks helping a developer to figure out where the code is breaking and providing an error message which is a hint to fix the error in the code. Developers also monitor code by writing into their scrips a `console.log()` which is a function that logs or prints to the browser console a script that a developer may write in their code to check for how, when and why code failure occurs.

A shim, is a peice of code that provides a layer of abstraction during the transpiling of code when an network call is made and therefore runs in the network layer.

A polyfill, is a type of shim, that transpiles modern HTML/ CSS (Cascading Style Sheets) and ES6 code back into the more basic versions to ensure browser compatability.

Babel is a polyfill that uses CoreJS and babel-regenerator-runtime to polyfill (made backwards compatible) older browsers to newer language syntax.

CoreJS is an ECMA Script polyfill library. There are several such libraries. CoreJS is the most flexible/ trusted polyfill.

Other shims have a more focused scope. For example, only ES5/ ES6  versions of JavaScript use a dated JavaScript design pattern called Global Variables - discussed in Part2 of this series - to transpile code back to even older versions of JavaScript that browsers read.

[For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).


# What is the difference between webpack, Babel and ES-Build?

Webpack is a JavaScript build tool that helps transpiling, configuiring, compiling code and more. It is used in a NodeJS (commonly known as Node) environment. As a side note, naming convention sometimes is upper case. However, like google, webpack is a brand name, I use lower case in these blogs, unless if it is at the start of a sentence.

Webpack is a specialised task runner that takes inputs and produces and output. The inputs are `.js/`,`.html/` `.css` files and the output is browser parseable code. 

The `.html` and `.css` files are processed with plugins as the [documentation on npm](https://www.npmjs.com/package/webpack) describes.

Webpack an open source project that relies on [sponsors](https://webpack.js.org/#sponsors) and programmers who volunteer their time to maintain the programme. 

It is not tied to (and paid by) a big company like some other open source projects, and on the [Webpack github repo](https://github.com/webpack/webpack.js.org) you will find several opportunities to contribute to the maintenance and development of this package. Because of this patchy support, many developers are choosing to use ES-Build.

Webpack is a build tool for frontend development in particular. JavaScript can be read by browsers and does not actually need a build program to run. 

### Some of the key changes that have led to build as a pre-requisite for site hosting

As the size of projects and web-applications grew from 1997, when JavaScript was created by the computer scientist Brendan Eich, the need to have a more performant build process became more apparent. JavaScript was designed to  intercept code and compile it back to what is more performant (a single light file) and it was created as a scripting language.

These are some of the key changes that resulted in the build process becoming a pre-requisite to host JavaScript sites.

- requests for more than just HTML (Hyper Text Markup Language) files - when the the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, was beginning to grow over the internet

- multiple browser request-response cycles in a HTTP (Hyper Text Transfer Protocol)/ XHR (HTTP calls using XML instead of HTML) calls which rose both in frequency and volume

- requests for more than just styling with CSS (Cascading Style Sheets) and other static files - images/ audio/ video

- more pages for websites in the late 1990s - sites becoming larger in terms of content provision

- more computers used by more people

- more devices - not just desktop computers/ laptops/ tablets/ mobile phones/ wearables

It all essentially boils down to - more data/ more big data/ more interconnected big data and file order dependencies (one file depending on another for information). So the pressure to ensure more performant page renders via the process of hydration grew and the faster building of JavaScript files was, and continues to be the ask of the day.

### What happens if you do not build your code before you release it? 

Well, in today's day and age you can only do that if you run HTML, CSS and vanilla JavaScript as your code base. A few static or "brochure" sites can follow this model.

The reality is, with the number of apps, web and mobile plus now with wearable devices, the pressure for more performant page and information loading is only going to increase. 

The biggest distrupter post 2016 was mobile phones, knocking even tablet usage out of the market, but wearables could follow very quickly with watches becoming a key distruptor.

If code runs without a pre-processor or builder the volume of information will not reach the user - what is often termed as "breaking the internet". 

### What are the benefits of webpack?

The key benefits that webpack and many other builders offers are:

- minification of code -> all white spaces are removed and the file sizes are made lighter and therefore quicker/ more performant
- maintain file order dependencies
- keep bugs out of an expensive production
- combine files
- lint out errors (there are specialist linters for React and other libraries and frameworks, the webpack linter performs some basic functions for `.js` files)

Webpack does not solve all these problems and is not a silver bullet. Indeed, webpack being a package in itself, needs maintainence of dependencies and versions.

Webpack today (2024) has fallen out of favour, with many applications moving to ES-Build which is more performant.

### What are the features of Webpack the latest v5?

Webpack v1 was the first version of the build tool but webpack v2 now has other features that have been released to keep pace with change. Key features of webpack are the same, the execution of the code to bundle JavaScript may vary from version to version. 

Packages, like webpack are updated frequently.

While the main release of webpack v5 was in 2018, every major version may have small updates which can be discovered in the `node_modules` files or in a `package.json` file if your repo depends only on webpack. The updates may be shims, or polyfills - which are patches of code performing certain tasks to improve the code execution - and may be minor not causing any changes from previous version to break. 

Major versions, however, can and do have breaking changes which may require developers to go back to the drawing board and update old versions or review the documentation to fix code that breaks because the repo is either directly, or indirectly, dependent on a package like webpack.

At the time of writing (2024) the main version of webpack is v5, the details in the official documentation [webpack version 5](https://webpack.js.org/blog/2020-10-10-webpack-5-release/).

While the functionality of Webpack v5 may have specific breaking changes from v4, webpack has all the functionality of a good bundling package outlined in Part2 of this series which discusses the generic ways in which bundlers offer better functionality for code bundling. This is a screen grab from the v5 home page.

![Webpack Version 5](./assets/webpack-v5-screengrab.png)

It is worth noting that webpack works with `npm` not Bower and like all packages are a work in progress, so v5 could be updated and future breaking changes are possible.

With all packages, it is important to keep an eye on changes and modify your code base if required.

### What is the difference between Babel and Webpack?

Webpack is mainly a JavaScript bundler for ES6 modules. Babel is mainly a transpiler. Babel and webpack are often used together. In the next section I review Babel in a little more detail.

## What is Babel?

As a short recap, for many years there was no innovation on JavaScript code. This made it almost obsolete. The first version of JavaScript - ES1 - was written by Netscape's, Brenden Eich, in 1997 apocraphally in 10-days.

As the the browser wars broke out every computer manufacturer wanted their own browser and the race to grab a share of the browser market led to some rapid updates ES2 - 1998, ES3 - 1999 and then a long lull ES5 - 2009 and the more standardised version ES6- 2015 with ES13 (current-2022).

With The European Computer Manufacturers' Association, [ECMA's](https://en.wikipedia.org/wiki/Ecma_International), intervention, JavaScript now is maintained and updated regularly. Early modules of JavaScript still run on the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, and newer modules need to be transpiled so that there is uniformity over the code base for browsers to parse(read/ understand) the code.

There are over 100 languages that are transpiled back into JavaScript today. TypeScript and Babel are 2 popular transpilers, although TypeScript is a superscript of JavaScript, it has to be transpiled back into JavaScript and the older versions that browsers can read. TypeScript's main function is to make JavaScript, which is loosely typed, into a strongly-typed version or super-script. Babel, on the other hand, is primarily a transpiler.

In Part1, Part2 and Part3 of this series some of the core concepts behind code modularisation, bundling, compiling and transpiling are discussed in more detail. In brief, computer code has to be chunked into smaller bundles, compiled together and then converted or transpiled from the more modern versions to the older versions browsers can read.

Created by an Australian software developer, Sebastian McEnzie, Babel, is a transpiler that tanspiles ES5 to ES13 to older verisons.

You can think of Babel as a translator. Versions of JavaScript above ES6 offers developers easier and simpler syntax to write code. They can improve efficieny but the trade-off is that due to the fragmentation of the browser market and lack of will to standarise browser parsing of JavaScript, these features are unrecognizable in modern day browsers.

To find a balance between compatibility and development convenience and efficiency, Babel was developed and has been widely adopted by package builders and managers.

Programmers can now write code with the syntatical sugar, that ES6 and later versions of JavaScript offer, and then use Babel to translate them into code that browsers can understand.

Syntactical sugar is syntax added to a code that makes it easy to work with, transpiling with tools such as Babel, reverses this process and makes the process more basic for binary computation and machine-readable code.

### Other options to Babel as a JavaScript transpiler

Babel is not the only JavaScript transpiler in the market. It is a polyfill, which a code-patch or shim.

[Kangex](https://kangax.github.io/compat-table/es6/) is a resource that allows you to check all polyfills, shims and libraries for browser compatiblity. Babel ranks better than most other libraries and packages compared to other shims on this list.

[Browserstack](https://www.browserstack.com/) - gives you a  list.

Other transpilers are google's Traceur - this is an experimental transpiler and not as feature-rich as Babel.

TypeScript has a transpiler and sometimes is compared to Babel but it is a language - a superscript of JavaScript. The primary function of TypeScript is to transpile TypeScript to JavaScript, it happens to have a transpiler but that is not its core function. Babel is not a language, its core function is transpiling.

Babel, itself is is made up of several Node (a short version for NodeJS, a JavaScript run-time environment) packages. In Part2 you can see a brief explanation of npm - Node Package Manager - and Node. To paraphrase, NodeJs packages code into programs and these pre-packaged libraries are available on npm.

It is a pattern you will see in many libraries. For example, Babel which is now in Version 6 of its package-management lifecycle, has baked in 2 key libraries (amongst others) - `babel-core` and `babel-cli` it has further plugins, transformers, task runners, presets. These have to be configured in a dotfile - `.babelrc` in the root of a project with presets depending on how you use Babel.

## What is ES-Build?

ES-Build is another code builder, compiler and transpiler. It uses `go` as a base language and uses ES6 JavaScript modules parsing them on the fly.

Webpack and Babel, reduce JavaScript files to the base CommonJS for browsers to parse. This is an additional step.

Code is bundled in 3 phases - parsing, linking, and code generation. The linking happens by hooking into code modules with the import-export key words without transpiling them. Only in the third phase is the code transpiled.

This makes the build process more performant.


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

_Further Reading_ [Twilio blog on ASTs](https://www.twilio.com/en-us/blog/abstract-syntax-trees)
JS code bundling

This code is bundled for usage for browsers to understand in small chunks. Under the hood, bundling is a function that takes some files and emits others. I write about JavaScript specifically, but in general all code behaves in the same way - the syntax and grammar of the function that is written depends on the language the code is running in.

While this is a simple explanation, there are several scripts that are run between input and output. Bundlers examine code modules, entry points, code chunks, code chunk groups, and perform several tasks.

Bundlers, like webpack, chunk and bundle all the code together to make it easier and more performant for browsers to understand code that is sent to a web-server. This bundling happens asynchronously - which means it happens on a server in the background - while you are browsing pages on a web or mobile app.

Bundling files is a common way to pack code into a file that is more performant/efficient depending on its use case.

webpack is one such JavaScript bundler for JavaScript ES6 modules. It is the most popular, however, there are others like Browserify, Parcel, Rollup and SnowPack.

__A short list of JavaScript code bundlers__

- [RequireJS](https://requirejs.org/), is a JavaScript bundler which is now outdated, it is a library that helped developers manage dependencies in their code base, as you see in Part1, it uses AMDs (Asynchronous Module Definition), older JavaScript libraries like JQuery use RequireJS. All bundlers require code to be loaded on an HTML (Hyper Text Markup Language) page, the [documentation for RequireJS](https://requirejs.org/docs/api.html) shows that RequireJS takes an alternative approach to loading - it encourages using module IDs instead of URLs for script tags.

- [Browserify](https://browserify.org/) is a code compiler and how it works is on the [handbook on GitHub](https://github.com/browserify/browserify-handbook)

- webpack, the latest [version webpack 5](https://webpack.js.org/blog/2020-10-10-webpack-5-release/) is one of the most popular bundlers and often is used by other JavaScript libraries like ReactJS

- [Rollup](https://rollupjs.org/)is faster for mobile applications and libraries and its home page neatly divides some of the operations that a code bundler undertakes under the hood, namely code formatting options (including AMDs, UMDs, iffies and ES6 as we have seen in Part1), code and bundle splitting where code is automatically split into chunks and lazy loading for images allows images to be loaded only when the user scrolls down the page - and much more. 

- [Parcel](https://parceljs.org/) has no configuration files. It has some of the same benefits as webpack and all code bundlers - code splitting, asset bundling (images-videos-CSS (Cascading Style Sheets) styles), efficient DOM-tree shaking to remove inefficient code. It claims to be faster than webpack. When a website is created a tree of all the elements called the DOM (Document Object Model) is built. To shake out the fluff from every branch of this DOM-tree, pre-processors have to delve into a complex mesh of  HTML (Hyper Text Markup Language) elements, a process called layout-thrashing or DOM-tree shaking.

- [Snowpack](https://www.snowpack.dev/) claims to have significant advantages over webpack for frontend. Data is cached (saved in memory) so once code is built it is cached forever improving the speed and performance of page reloads, it means instant start-up time of frontend applications and an instant refresh on save - built in bundling for ReactJS - a JavaScript frontend component library, TypeScript a JavaScript superscript and more.

## What are the key functions of a code bundler?

Code bundlers automate certain processes required for the code to be loaded on to an HTML page.

Some of the functions that bundlers under take are:

- standardise code and support JavaScript design patterns and modules such as AMDs, UMDs, CommonJS and ES6

- lint code and throw errors making incorrect code easy to correct and debug

- handle the expensive task of DOM-tree shaking. The DOM-tree is a tree of elements is created with every application with a root element and several branches and branches of branches. It represents the complex set of relationships between an apps pages and component parts. As a user, only one small part of the app may be requested for by the user. Tree-shaking is the process by which a program is run through the DOM tree to clean up and remove unused parts of the tree so that when a user asks to see a specific element (branch/ page/ component/ module) in the tree, the response is quick and the code performance is efficient. This is specifically important with mobile/ wearable requests as they have less compute power than a computer or a laptop

- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently

- trace code back to the source files and providing source maps - this helps in the development environment with root-cause analysis and debugging

- extend basic functionality through plugins

- bundle code for development, integration and production environments - in development source-code mapping is more important while in production minification and concatenation are more important. Minification is the process which a code bundler removes all white spaces, as well as unecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined together once again to make the code more performant

## What are task runners?

Build tools that perform specialised tasks. These sub-set of tools that perform these tasks are called task runners.

eg: Lodash is a task runner, it is a JavaScript utility library delivering modularity, performance and extras specifically when it comes to working with arrays, numbers, objects, strings, etc.

Lodash’s modular methods are great for:

- iterating arrays, objects, and strings
- manipulating and testing values
- creating composite functions

## What is a code package?

Packages are bundles of source code distributed by developers of software, which can be compiled and installed on your machine.

JavaScript for many years did not have package managers and a software bundle had to built for every use case from scratch. Today (time of writing 2022), packages have been created for reusable frontend components - ReactJS - is component library package, testing - Jest is a JavaScript test runner and state management - Redux is one such tool, to name a few packages for JavaScript developers.

## What is code package management?

Software decays as soon as it is written. To prevent code rot, packages are frequently updated to keep them relevant to new use cases or to patch security threats. Software packages are also updated to use new features introduced in the package.

Package updates are very frequent as the average project will depend on several NPM packages that change frequently. Some packages depend on other packages (dependancies of dependancies).

With npm, you can use `npm update` to auto-update packages and `npm-audit-fix` to fix key vulnerabilities.

You can also use 3rd party audits like Synk (pronounced sneak).

## Are NodeJS and NPM a code bundlers?

NodeJs, or Node, is a JavaScript run-time language, packages code into programs using a library called Node Package Manager. While it performs certain bundling functionality, it's primary role is as a run-time environment.

One of the most popular libraries used with Node is npm, which stands for Node Package Manager. It is also a brand name and therefore written in lower case - where it is a command or script `npm` is notated as code.

npm uses CommonJS as a code bundler to facilitate easy distribution and helps developers to easily install, manage, and share packages of code that can be re-used in their applications. These packages can include anything from small utility functions to entire frameworks. So npm is not a code bundler but many of the libraries are pre-packaged with bundlers like webpack, Babel, or Snowpack and CommonJS under the hood.

In summary, Node packages code into programs using different libraries into a bundle called `node_modules`, and npm uses CommonJS and other bundlers and code parsers to manage packages of code from various libraries in the `node_modules` packages so that can be read and parsed by browsers.

Some of the other JavaScript package managers are Bower/ JSPM /JAM and Volo. NPM has over a million packages so has become the most used JavaScript package manager.

## What are Node or `npm` scripts

Node or npm `scripts` is an object that holds a key-value pair of the scripts that can be run to build out your front-end browser-based app.

They are like a batch file or a bash script, depending on your operating system. One of their key advantages is they will run a local version of your app.

If you use the CLI - `npm run scripts` runs these scripts and builds your front-end. To run tests from your repo `npm run test`.

Should there be a compile time error then an error is thrown in the Node Console with the reason why the script failed and where. 

The errors are written to the Node Console as Node works outside the browser, so a `console.log()` command will log what you want to see in the terminal section of your IDE not in the google developer tools available with Chrome, which is a browser-based console.

Gulp/ Grunt/ Webpack are all front-end build tools that have more specialised scripts and features that help front-end production-ready builds. Grunt was the first (therefore has first mover advantage over other build tools) task runner that automated the process of chunking, bundling, compiling and transpiling front-end code ready for production and deployment.

Webpack and Browserify are bundlers and module loaders.

The build can be done manually but a combination of these pre-packaged tools make it so much easier to create a production-ready/ deployment-ready package for servers like Heroku/ AWS/ Azure/ Google Cloud to parse and display content on the browser. 


- [How to geek](https://www.howtogeek.com/44052/htg-explains-what-are-computer-algorithms-and-how-do-they-work/)