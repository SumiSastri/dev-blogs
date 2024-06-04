---
layout: default
title: What is the call stack and critical render path?
parent: What is computer code
nav_order: 6
last_updated: Feb 2024
---


# What is the call stack and critical render path?

The critical render path is how browser engines read different languages - HTML (Hyper Text Markup Language), CSS (Cascading Style Sheets) and JavaScript and the order they are read in is the call stack of the browser JavaScript engines.

HTML is parsed first, then CSS and then JavaScript.

JavaScript being a loosely typed language - stores variables that can be changed - asynchronous and single-threaded means that browsers parse the language in the most convenient order in the call stack. 

The Document Object Model (DOM), which is an API, queries HTML and CSS and returns an object, of all the HTML elements on a page in a tree-like structure.  JavaScript accesses this DOM-tree and then is run on each node (the individual HTML elements on a page) and then mutates or changes the node's behaviour. The DOM-tree is mutated or morphed, node by node (or HTML element by HTML element) in this process of hydration.

When using vanilla JavaScript, it is required to put the scripts in the HTML metadata for set up so that the browser can parse the script. 

With JavaScript libraries, the MVC (model-view-control) method is used to access the DOM via a virtual DOM. The method of access to the DOM depends on the library - jQuery, React-js, Node-js are library dependencies that access the DOM in different ways.

The browser complies code first by looking at the syntax (lexical compliation)
- if it detects syntax errors and the code does not run
- if it detects blocks of code in the function - conditionals, loops, variables etc., then it looks at the scope of the function and what is within and what is referenced
- then in the browser memory, it runs the new code and stores it in the window object
- by default all code is in the window scope therefore window.alert() can be called anywhere. (go to console type window to check root scope)
- Since the DOM is an internal API you have the traditional API calls
```get``` which is the ```getElement``` function. Once the data has been fetched by the DOM API, you can perform other methods available from the DOM-API ```setAttribute = post``` or ```removeElement = delete``` For example, ```-getElementsByTagName() - setAttribute() - removeElementById();``` are all the DOM-API methods.

[For a deep dive into how browsers work, you can go to this section, in the blog](https://sumisastri.github.io/dev-blogs/browser-engines/).