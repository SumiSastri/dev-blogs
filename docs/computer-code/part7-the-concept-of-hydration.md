---
layout: default
title: What does hydration mean?
parent: What is computer code
nav_order: 6
---

# What does hydration mean?

Before a software package can be released into production mode, all the JavaScript files have to be bundled and built.

Webpack takes developer files, for example,

    - CSS (Cascading Style Sheets) or `.css` files) 
    - Node modules (bundled NodeJs packages in a folder `node_modules`)
    - JavaScript extension files (`.js`) - from npm library imports
    - imported and exported modules of JavaScript code

and then bundles these files into a commonJs or mainJs file. 

All the JavaScript bundles of files are then transpiled into to JavaScript that browser engines can read and parse.

These transpiled files are fed into a script tag into the root  HTML (Hyper Text Markup Language) file or the `.html` file). 

Wepack can be used in conjunction with babel to transpile code, or any other transpiler..

Browsers then parse the HTML, CSS and JavaScript files and render the pages on the web.

This process of hydrating HTML pages with JavaScript, can be slow and reduce site performance (speed/ efficiency). 

If the hydration is fast site efficiency is better. Developers are constantly looking for tools that will improve site performance.
