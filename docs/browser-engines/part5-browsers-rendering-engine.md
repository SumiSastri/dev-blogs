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

The browser engine also deconstructs the CSS (Cascading Style Sheets) code written and transforms it into a data-model that is an object which computers can read. This structure is called the CSS Object Model, or the CSS-OM.

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

If these JavaScript files have to be fetched server-side via application programming interfaces (APIs) then this becomes a major performance issue as 
the page could take several seconds to load as this action is completed.

Therefore much of the JavaScript actions are run with asynchronous code blocks.

JavaScript is also parsed separately in the JavaScript engine, rather than the browser engine.

## The critical render path and the call stack

The critical render path is how browser engine reads  HTML (Hyper Text Markup Language), CSS and JavaScript. The call stack is the order in which the languages are read - with HTML first, CSS next and the JavaScript.

That said, the rendering engine parses the language in the most convenient order in the call stack, and therefore JavaScript is often parsed first.

When using vanilla JavaScript, it is required to put the scripts in the HTML metadata for set up so that the browser can parse the script. 

JavaScript component libraries, like Web Components, jQuery, React, Next and Node access the DOM in different ways. For example, libraries like React and Next that use the MVC (model-view-control) method access the DOM in the root-HTML via a single node, abstracting out the DOM-tree and creating a virtual DOM. 

This can make the process of rendering a page both simple and complex. Simple as the virtual-DOM handles all the changes rather than the changes occuring on each node of the DOM-tree, complex as much of the work is abstracted out by alogrithms written by these libraries to perform, essentially the tasks of the browser's rendering engine, almost like a pre-processor.

[Part 3 of the inside a browser from Chrome is really worth a read](https://developer.chrome.com/blog/inside-browser-part3)

## Modern rendering - gaming, streaming, voice-to-text

Since the explosion of gaming and mobile devices, rendering engines have been separated into web and mobile rendering engine upgrades.

Browsers for web developers are vastly different from mobile browsers. This is largely because there are so many more actions users perform and expect these actions to be executed quickly - scrolling, multi-tab viewing, listening to audio data and viewing videos that can be stopped, fastforwarded or rewound.

While we take all of these actions for granted, browser developers like Chrome, Safari, Firefox and Edge have had to invest vast resources to constantly upgrade their browser rendering engines for the web. They also have a separation of concerns where browsers for other devices are developed specifically to work with the device operating systems.

Another disrupter in the rendering of information is the use of voice and biometrics. Both of these forms of data send information and requests via devices with users expecting to get accurate information back.

Once again, this is more a feature of mobile devices and wearables rather than web development, it is a trend to watch as it is rapidly disrupting traditional ways of searching for information.

A good example is next generation rendering, or[RenderingNG](https://www.youtube.com/watch?v=sUbJPHYKZkU), rolled out by Chrome.


## AI and the rendering engine

[In 2024, Google Chrome launched Gemini](https://www.youtube.com/watch?v=D7dA5KY5FEo), its answer to how to use Artificial Intelligence (AI) in its Chrome browser.

As the browser has become more complex, google now calls its browser an operating system - or Chrome-OS. 

A really good video to watch to see [the progression of Chrome's browser architecture](https://www.youtube.com/watch?v=PzzNuCk-e0Y) is on YouTube, it is little more difficult to find.

Apple has also announced [updates to the Safari browser](https://blog.logrocket.com/understanding-latest-webkit-features-safari-17-4/?utm_source=newsletter&utm_medium=em&utm_campaign=24Q2_EM_TheReplay_240604&mkt_tok=NzQwLUxLTS0yNjMAAAGTgsDXUMUVBPSyDviyQrCH26K74CLjJKkdDmM2_mSupg_Hi6l46L9EaYzZrnmbiziM9T6RbxH4COtwLJnI1V8YfuiZSIbtT8KdLLUrl6OGU7M#utm_source%3Dnewsletter%26utm_medium%3Dem%26utm_campaign%3D24Q2_EM_TheReplay_240604%26mkt_tok%3DNzQwLUxLTS0yNjMAAAGTgsDXUMUVBPSyDviyQrCH26K74CLjJKkdDmM2_mSupg_Hi6l46L9EaYzZrnmbiziM9T6RbxH4COtwLJnI1V8YfuiZSIbtT8KdLLUrl6OGU7M) with 46 new features and 145 bug fixes, however its rendering engine still has a long way to go. 


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

- [Updates to Apple's Safari 17.4 release notes](https://developer.apple.com/documentation/safari-release-notes/safari-17_4-release-notes)
