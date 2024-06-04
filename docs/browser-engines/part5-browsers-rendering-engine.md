---
layout: default
parent:  Browser Engines
nav_order: 14
title: How the browser rendering engine works
last_updated: June 2024
---

# How the browser rendering engine works

While most browsers have the same components, and do the same things, they may do the same things slightly differently.

For example, the job of the rendering engine in all browsers is to "paint" or display a page on the user interface (UI) of the device. UI's for mobile devices, gaming consoles, computers, wearables and TV monitors/ screens have different heights, widths so a calculation of these parameters need to be made by the rendering engine.

Firefox's rendering engine is called Geko, Chrome's is Blink and Apple uses WebKit. Each of these will perform the same function of rendering a page with their own custom software.

The rendering engine should not be confused with the JavaScript engine, which parses JavaScript code. Chrome uses the V8 engine, Safari uses JavaScriptCore, and Firefox uses SpiderMonkey.

## HTML and the DOM - static page structure and content

The browser engine first deconstructs the HTML(hyper-text-markdown-language) code written and transforms it into a data-model that is an object which computers can read. This structure is called the Document Object Model.

The static page structure - headings, paragraphs, images and multi-media elements is formed. The DOM-tree creates the hierarchical structure of where all of these are placed through the app and shown on various viewports.

## CSS and the CSSOM - painting

The browser engine also deconstructs the CSS (cascading-style-sheets)  code written and transforms it into a data-model that is an object which computers can read. This structure is called the CSS Object Model, or the CSS-OM.

The layout of the page, all the font styles, colours and relative placement of the elements are painted on to the page structure.

## The render tree

The combination of the HTML and CSS created by calculations made to render them on various veiwports is called a render tree.

The render tree could be different for different devices, this is because of the subtle differences between the ways that rendering engines in browsers work.

Because of these differences cross-browser compatibility has to be tested by developers to ensure that rendering is uniform across all platforms.

A good [video from Safari's Webkit](https://www.youtube.com/watch?v=YmbvpkjHDjU) demonstrates how the render tree is created.

## JavaScript - dynamic page content

If there was no JavaScript in an app, then the render tree will render both the HTML and CSS.

However, with JavaScript, its ability to interact with the DOM and change the DOM-tree by adding elements, or modifying elements as well as styling, when computer code encounters JavaScript source code, the analysis of the JavaScript `<script>` tag takes precedence and the creation of the render tree is blocked.

JavaScript is now given priority as it can change the page dynamics and structure.

If these JavaScript files have to be fetched server-side via Application Programming Interfaces (APIs) then this becomes a major performance issue as 
the page could take several seconds to load as this action is completed.

Therefore much of the JavaScript actions are run with asynchronous code blocks.

JavaScript is also parsed separately in the JavaScript engine, rather than the browser engine.

## The critical render path and the call stack

The critical render path is how browser engine reads HTML, CSS and JavaScript. The call stack is the order in which the languages are read - with HTML first, CSS next and the JavaScript.

That said, the rendering engine parses the language in the most convenient order in the call stack, and therefore JavaScript is often parsed first.

When using vanilla JavaScript, it is required to put the scripts in the HTML metadata for set up so that the browser can parse the script. 

JavaScript component libraries, like Web Components, jQuery, React, Next and Node access the DOM in different ways. For example, libraries like React and Next that use the MVC (model-view-control) method access the DOM in the root-HTML via a single node, abstracting out the DOM-tree and creating a virtual DOM. 

This can make the process of rendering a page both simple and complex. Simple as the virtual-DOM handles all the changes rather than the changes occuring on each node of the DOM-tree, complex as much of the work is abstracted out by alogrithms written by these libraries to perform, essentially the tasks of the browser's rendering engine, almost like a pre-processor.

## Modern rendering - gaming and streaming

Since the explosion of gaming and mobile devices, rendering engines have been separated into web and mobile rendering engine upgrades.

Browsers for web developers are vastly different from mobile browsers. This is largely because there are so many more actions users perform and expect these actions to be executed quickly - scrolling, multi-tab viewing, listening to audio data and viewing videos that can be stopped, fastforwarded or rewound.

While we take all of these actions for granted, browser developers like Chrome, Safari, Firefox and Edge have had to invest vast resources to constantly upgrade their browser rendering engines.

A good example is next generation rendering, or[RenderingNG](https://www.youtube.com/watch?v=sUbJPHYKZkU), rolled out by Chrome.

## AI and the rendering engine

[In 2024, Google Chrome launched Gemini](https://www.youtube.com/watch?v=D7dA5KY5FEo), its answer to how to use Artificial Intelligence (AI) in its Chrome browser.

As the browser has become more complex, google now calls its browser an operating system - or Chrome-OS. 

A really good video to watch to see [the progression of Chrome's browser architecture](https://www.youtube.com/watch?v=PzzNuCk-e0Y) is on YouTube, it is little more difficult to find.


### Further reading and resources

- [W3 Docs](https://www.w3.org/TR/DOM-Level-2-Core/introduction.html)

- [Mozilla Docs](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)

- [Wikipedia](https://en.wikipedia.org/wiki/Document_Object_Model)

- [What is the DOM?](https://css-tricks.com/dom/)

- [Introduction to the DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)

- [How To Understand and Modify the DOM in JavaScript](https://www.digitalocean.com/community/tutorials/introduction-to-the-dom)

- [LogRocket blog - how the rendering engine works](https://blog.logrocket.com/how-browser-rendering-works-behind-scenes/)

- [RenderingNG architecture](https://blog.chromium.org/2021/10/renderingng.html)

- [Chrome dev blogs](https://developer.chrome.com/blog)

- [Chrome the fast and the curious blogs](https://blog.chromium.org/search/label/the%20fast%20and%20the%20curious)

- [Microsofts Trident rendering engine](https://www.youtube.com/watch?v=tPKiCu37VmY)

- [Updates to Trident 2021](https://www.youtube.com/watch?v=sU0WRZ0kkNo)
