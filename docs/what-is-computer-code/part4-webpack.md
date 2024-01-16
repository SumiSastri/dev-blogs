---
layout: default
title: What is webpack?
parent: What is computer code
nav_order: 6
---

# What is webpack?

Webpack is a JavaScript build tool that helps transpiling, configuiring, compiling code and more. It is used in a NodeJS environment. It is a specialised task runner that takes inputs and produces and output. The inputs are `.js/`,`.html/` `.css` files and the output is browser parseable code. The `.html` and `.css` files are processed with plugins as the [documentation on npm](https://www.npmjs.com/package/webpack) describes.

Webpack an open source project that relies on [sponsors](https://webpack.js.org/#sponsors) and programmers who volunteer their time to maintain the programme.. It is not tied to (and paid by) a big company like some other open source projects, and on the [Webpack github repo](https://github.com/webpack/webpack.js.org) you will find several opportunities to contribute to the maintenance and development of this package.

Webpack is a build tool for frontend development in particular. JavaScript can be read by browsers and does not actually need a build program to run. Naming convention sometimes is upper case as in webpack, as is now consider an essential in a JavaScript toolkit. However, like google, webpack is a brand name, I use lower case in these blogs.

As the size of projects and web-applications grew from 1997, when JavaScript was created by the computer scientist Brendan Eich, the need to have a build process intercepting the code and compiling it back to what is more performant (a single light file) became more of an issue.

Some of the key changes that have led to build as a pre-requisite now to host sites.

- multiple browser request-response cycles in an HTTP/ XHR calls (frequency/ volume)
- requests for more than just HTML (Hyper Text Markup Language) files - when the the [World Wide Web](https://en.wikipedia.org/wiki/World_Wide_Web), or the Web, was beginning to grow over the internet
- requests for more than just styling with CSS (Cascading Style Sheets) and other static files - images/ audio/ video
- more pages for websites in the late 1990s - sites becoming larger in terms of content provision
- more computers used by more people
- more devices - not just desktop computers/ laptops/ tablets/ mobile phones/ wearables
- the biggest distrupter now is mobile phones but wearables could follow very quickly
- it all essentially boils down to - more data/ more big data/ more interconnected big data and file order dependencies (one file depending on another for information)

What happens if you do not build your code before you release it? Well, in today's day and age you can only do that if you run HTML, CSS and vanilla JavaScript as your code base. The code will run on a web-browser without a pre-processor or builder and does not need to be maintained. The downside of this approach is functionality can, but does not need to be, limited.

## What are the benefits of Webpack?

The key benefits that webpack and many other builders offers are:

- minification of code -> all white spaces are removed and the file sizes are made lighter and therefore quicker/ more performant
- maintain file order dependencies
- keep bugs out of an expensive production
- combine files
- lint out errors (there are specialist linters for React and other libraries and frameworks, the webpack linter performs some basic functions for `.js` files)

Webpack does not solve all these problems and is not a silver bullet. Indeed, webpack being a package in itself, needs maintainence of dependencies and versions.

## What are the features of Webpack the latest v5?

Webpack v1 was the first version of the build tool but webpack v2 now has other features that have been released to keep pace with change. Key features of webpack are the same, the execution of the code to bundle JavaScript may vary from version to version. Packages, like webpack are updated frequently.

While the main release of webpack v5 was in 2018, every major version may have small updates which can be discovered in the `node_modules` files or in a `package.json` file if your repo depends only on webpack. The updates may be shims, or polyfills - which are patches of code performing certain tasks to improve the code execution - and may be minor not causing any changes from previous version to break. Major versions, however, can and do have breaking changes which may require developers to go back to the drawing board and update old versions or review the documentation to fix code that breaks because the repo is either directly, or indirectly, dependent on a package like webpack.

At the time of writing (2022) the main version of webpack is v5, the details in the official documentation [webpack version 5](https://webpack.js.org/blog/2020-10-10-webpack-5-release/).

While the functionality of Webpack v5 may have specific breaking changes from v4, webpack has all the functionality of a good bundling package outlined in Part2 of this series which discusses the generic ways in which bundlers offer better functionality for code bundling. This is a screen grab from the v5 home page.

![Webpack Version 5](./assets/webpack-v5-screengrab.png)

It is worth noting that webpack works with `npm` not Bower and like all packages are a work in progress, so v5 could be updated and future breaking changes are possible.

With all packages, it is important to keep an eye on changes and modify your code base if required.

## What is the difference between Babel and Webpack?

webpack is mainly a JavaScript bundler for ES6 modules. Babel is mainly a transpiler. Babel and webpack are often used together. In the next section I review Babel in a little more detail.
