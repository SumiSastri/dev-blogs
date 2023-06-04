---
layout: default
title: What is a code bundling
parent: What is computer code
nav_order: 2
---


# What is code bundling

Code, as we have seen in Part1 of What is Computer Code, is a series of instructions written in a coding language by code writers. This code is bundled for usage for browsers to understand in small chunks.

Bundlers, like Webpack chunks and bundles all the code together to make it easier and more performant for browsers to understand code that is sent to a web-server.

You may just require to package all your JavaScript into one file. Bundling files is a common way to pack code into a file that is more performant/ efficient depending on its use case.

Webpack is one such JavaScript bundler for JavaScript ES6 modules. It is the most popular, however ,there are others like Browserify, Parcel,Rollup and SnowPack. Here is a short list of bundlers and my notes:-

- RequireJS is outdated
- Broswerify is simple but not necissarily performant
- Webpack is comprehensive and good for projects
- Rollup is faster for mobile applications and libraries.
- Parcel has no config with some of the same benefits as webpack - code splitting, asset bundling (images-videos-CSS styles) and claims to be faster than webpack
- Snowpack however has some significant advantages over webpack on the front end for instant front-end builds. Data is cached (saved in memory) so once code is built it is cached forever improving the speed and performance of page reloads, it means instant start-up time of front-end applications and an instant refresh on save - built in bundling for ReactJS - a JavaScript frontend component library, TypeScript a JavaScript superscript,and more.

NodeJs a JavaScript run-time language, packages code into programs using a library, Node Package Manager (npm) that can be re-used by deverlopers. NPM, as it is more frequently referred to as, uses CommonJS (which is a code bundler), that browsers can't parse (read/ understand).

## What do code modules do to help bundling

- Standardises code
- Makes debugging easy
- Enables quick refactors
- Can be tested
- Improves autocomplete programming
- Prevents tree shaking - with the DOM-tree, browsers parse every root and branch - this makes the process of reading the DOM tree easier
- Easy to read

## Minification and concatenation of computer code to speed up code parsing

Minification is the process which a code bundler removes all white spaces and unecessary code to make the file size smaller/lighter and more performant

Concatenation is the process where one or more files are combined together.

## Task runners

Build tools that perform specialised tasks are called task runners.

eg: Lodash - is JavaScript utility library delivering modularity, performance & extras specifically when it comes to working with arrays, numbers, objects, strings, etc.
Lodash’s modular methods are great for:

- Iterating arrays, objects, & strings
- Manipulating & testing values
- Creating composite functions

## What is a code package 

Packages are bundles of source code distributed by developers of software, which can be compiled and installed on your machine.

JavaScript for many years did not have package managers and a software bundle had to built for every use case from scratch. Today (time of writing 2022), packages have been created for reusable front-end components - ReactJS - is component library package, testing - Jest is a JavaScript test runner and state management - Redux is one such tool, to name a few packages for JavaScript developers.

These packages are hosted in an open source package management library called Node Package Manager (NPM) where the packages and their versions (NVM) are stored, NVM stands for Node Version manager.

However there are many more packages, and different languages have their own package managers.

Some of the other JavaScript package managers are Bower/ JSPM /JAM and Volo. NPM has over a million packages so has become the most used JavaScript package manager.

## What is code package management

Software decays as soon as it is written. To prevent code rot, packages are frequently updated to keep them relevant to new use cases or to patch security threats. Software packages are also updated to use new features introduced in the package. 

Package updates are very frequent as the average project will depend on several NPM packages that change frequently. Some packages depend on other packages (dependancies of dependancies).

With npm, you can use `npm update` to auto-update packages and `npm-audit-fix` to fix key vulnerabilities.

You can also use 3rd party audits like Synk (pronounced sneak).
