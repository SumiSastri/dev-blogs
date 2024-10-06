---
layout: default
title: What does hydration mean?
parent: What is the difference between computer code and computer programming?
nav_order: 6
last_updated: Feb 2024
---

# What does hydration mean in web development?

Hydration is the process in which client-side JavaScript converts a static HTML web page into a dynamic web page by attaching event handlers to the HTML elements.

Before a software package can be released into production mode, all the JavaScript files have to be bundled and built.

Webpack, a JavaScript code builder and bundler takes developer files, for example,

    - CSS (Cascading Style Sheets) or `.css` files) 
    - Node modules (bundled NodeJs packages in a folder `node_modules`)
    - JavaScript extension files (`.js`) - from npm library imports
    - imported and exported modules of JavaScript code

and then bundles these files into a commonJs or mainJs files. All the JavaScript bundles of files are then transpiled into to JavaScript that browser engines can read and parse.

These transpiled files are fed into a script tag into the root-HTML (Hyper Text Markup Language) file or the `.html` file). 

Wepack can be used in conjunction with Babel to transpile code, or any other transpiler. Browsers' JavaScript engines then parse the HTML, CSS and JavaScript files and render the pages on the web.

This process of hydrating HTML pages with JavaScript, can be slow and reduce site performance (speed/ efficiency).  If the hydration is fast site efficiency is better. Developers are constantly looking for tools that will improve site performance.

Techniques of partial or progressive hydration are used by some software packages - such as Gatsby, a static site generator. Others use trisomorphic hydration - this is a process where a virtual DOM-tree is created and hydration occurs only in the root-HTML, as with component libraries such as React and Vue.

The Document Object Model (DOM), which is an API, queries HTML and CSS and returns an object, of all the HTML elements on a page in a tree-like structure.  JavaScript accesses this DOM-tree and then is run on each node (the individual HTML elements on a page) and then mutates or changes the node's behaviour. The DOM-tree is mutated or morphed, node by node (or HTML element by HTML element) in this process of hydration.

### Further Reading 
- [Hydration on Wikipedia](https://en.wikipedia.org/wiki/Hydration_(web_development))

- [The technical details of hydration](https://web.dev/articles/rendering-on-the-web)

- [For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).
