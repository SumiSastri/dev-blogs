---
layout: default
title: What is a code bundling
parent: What is computer code
nav_order: 2
---
# What is code bundling?

Code, as we have seen in Part1, is a list of instructions written in a coding language by code writers. This code is bundled for usage for browsers to understand in small chunks. Under the hood, bundling is a function that takes some files and emits others. I write about JavaScript specifically, but in general all code behaves in the same way - the syntax and grammar of the function that is written depends on the language the code is running in.

While this is a simple explaination, there are several scripts that are run between input and output. Bundlers examine code modules, entry points, code chunks, code chunk groups, and perform several tasks.

Bundlers, like webpack, chunk and bundle all the code together to make it easier and more performant for browsers to understand code that is sent to a web-server. This bundling happens asynchronously - which means it happens on a server in the background - while you are browsing pages on a web or mobile app.

Bundling files is a common way to pack code into a file that is more performant/efficient depending on its use case.

webpack is one such JavaScript bundler for JavaScript ES6 modules. It is the most popular, however, there are others like Browserify, Parcel, Rollup and SnowPack.

__A short list of JavaScript code bundlers__

- [RequireJS](https://requirejs.org/), is a JavaScript bundler which is now outdated, it is a library that helped developers manage dependencies in their code base, as you see in Part1, it uses AMDs (Asynchronous Module Definition), older JavaScript libraries like JQuery use RequireJS. All bundlers require code to be loaded on an HTML page, the [documentation for RequireJS](https://requirejs.org/docs/api.html) shows that RequireJS takes an alternative approach to loading - it encourages using module IDs instead of URLs for script tags.

- [Browserify](https://browserify.org/) is a code compiler and how it works is on the [handbook on GitHub](https://github.com/browserify/browserify-handbook)

- webpack, the latest [version webpack 5](https://webpack.js.org/blog/2020-10-10-webpack-5-release/) is one of the most popular bundlers and often is used by other JavaScript libraries like ReactJS

- [Rollup](https://rollupjs.org/)is faster for mobile applications and libraries and its home page neatly divides some of the operations that a code bundler undertakes under the hood, namely code formatting options (including AMDs, UMDs, iffies and ES6 as we have seen in Part1), code and bundle splitting where code is automatically split into chunks and lazy loading for images allows images to be loaded only when the user scrolls down the page - and much more. 

- [Parcel](https://parceljs.org/) has no configuration files. It has some of the same benefits as webpack and all code bundlers - code splitting, asset bundling (images-videos-CSS styles), efficient DOM-tree shaking to remove inefficient code. It claims to be faster than webpack.

- [Snowpack](https://www.snowpack.dev/) claims to have significant advantages over webpack for front-end. Data is cached (saved in memory) so once code is built it is cached forever improving the speed and performance of page reloads, it means instant start-up time of front-end applications and an instant refresh on save - built in bundling for ReactJS - a JavaScript front-end component library, TypeScript a JavaScript superscript and more.

## What are the key functions of a code bundler?

Code bundlers automate certain processes required for the code to be loaded on to an HTML page.

Some of the functions that bundlers under take are:

- standardise code and support JavaScript design patterns and modules such as AMDs, UMDs, CommonJS and ES6

- lint code and throw errors making incorrect code easy to correct and debug

- handle the expensive task of DOM-tree shaking. The DOM-tree is a tree of elements is created with every application with a root element and several branches and branches of branches. It represents the complex set of relationships between an apps pages and component parts. As a user, only one small part of the app may be requested for by the user. Tree-shaking is the process by which a program is run through the DOM tree to clean up and remove unused parts of the tree so that when a user asks to see a specific element (branch/ page/ component/ module) in the tree, the response is quick and the code performance is efficient. This is specifically important with mobile/ wearable requests as they have less compute power than a computer or a laptop.

- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently

- trace code back to the source files and providing source maps - this helps in the development environment with root-cause analysis and debugging

- extend basic functionality through plugins

- bundle code for development, integration and production environments - in development source-code mapping is more important while in production minification and concatenation are more important. Minification is the process which a code bundler removes all white spaces, as well as unecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined together once again to make the code more performant

## What are task runners?

Build tools that perform specialised tasks. These sub-set of tools that perform these tasks are called task runners.

eg: Lodash is a task runner, it is a JavaScript utility library delivering modularity, performance & extras specifically when it comes to working with arrays, numbers, objects, strings, etc.

Lodash’s modular methods are great for:

- iterating arrays, objects, & strings
- manipulating & testing values
- creating composite functions

## What is a code package?

Packages are bundles of source code distributed by developers of software, which can be compiled and installed on your machine.

JavaScript for many years did not have package managers and a software bundle had to built for every use case from scratch. Today (time of writing 2022), packages have been created for reusable front-end components - ReactJS - is component library package, testing - Jest is a JavaScript test runner and state management - Redux is one such tool, to name a few packages for JavaScript developers.

## What is code package management?

Software decays as soon as it is written. To prevent code rot, packages are frequently updated to keep them relevant to new use cases or to patch security threats. Software packages are also updated to use new features introduced in the package.

Package updates are very frequent as the average project will depend on several NPM packages that change frequently. Some packages depend on other packages (dependancies of dependancies).

With npm, you can use `npm update` to auto-update packages and `npm-audit-fix` to fix key vulnerabilities.

You can also use 3rd party audits like Synk (pronounced sneak).

## Are Node and NPM a code bundlers?

NodeJs, a JavaScript run-time language, packages code into programs using a library called Node Package Manager. While it performs certain bundling functionality, it's primary role is as a run-time environment.

One of the most popular libraries used with NodeJS is npm, which stands for Node Package Manager. It is also a brand name and therefore written in lower case - where it is a command or script `npm` is notated as code.

npm uses CommonJS as a code bundler to facilitate easy distribution and helps developers to easily install, manage, and share packages of code that can be re-used in their applications. These packages can include anything from small utility functions to entire frameworks. So npm is not a code bundler but many of the libraries are pre-packaged with bundlers like webpack, Babel, or Snowpack and CommonJS under the hood.

In summary, NodeJs packages code into programs using different libraries into a bundle called `node_modules`, and npm uses CommonJS and other bundlers and code parsers to manage packages of code from various libraries in the `node_modules` packages so that can be read and parsed by browsers.

Some of the other JavaScript package managers are Bower/ JSPM /JAM and Volo. NPM has over a million packages so has become the most used JavaScript package manager.
