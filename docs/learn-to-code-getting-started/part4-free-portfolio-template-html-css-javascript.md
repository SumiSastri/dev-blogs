---
layout: default
title: A free portfolio or website template with HTML, CSS and JavaScript
parent: Learn to code - getting started
nav_order: 2
last_updated: May 2024
---

# A free portfolio or website template with HTML, CSS and JavaScript

In this section, you can continue with CodePen, an open source sandbox. You will need to have completed Part 3 in this series to feel comfortable with this section.

Use [this free portfolio website template on CodePen](https://codepen.io/sumisastri/pen/oNBadVp) to work on this section

A word of advice, invest your time learning JavaScript. If this project interests you, do read the documentation and try more stuff from W3 Schools and Mozilla. Google, read and research!

JavaScript was originally written and designed in 10 days by [Brenden Eich](https://en.wikipedia.org/wiki/Brendan_Eich) in the 1990s. It has as many exceptions as it has rules. It failed to gain popularity until the early 2000s and now it is the fastest growing language by popularity and adoption.

The European Computer Manufacturers' Association, [ECMA](https://en.wikipedia.org/wiki/Ecma_International), acts as a standards body for JavaScript and updates JavaScript design patterns. [ECMA-6, or ES6](https://www.w3schools.com/Js/js_es6.asp), was the first major update to JavaScript. Each year since new updates have been added, part of a developers' job is to keep abreast of these changes, a list of the revisions up to 2020 are on [this link](https://en.wikipedia.org/wiki/ECMAScript).

Like CSS (Cascading Style Sheets) ,the basics of vanilla JavaScript or JS, is easy to learn but difficult to master. There are no short-cuts except to practice, practice, practice and learn, learn, learn.

Google new terms and research everything you read to layer and improve your knowledge. Wherever I have been able to I have added links to make this process easier for you.

## Start your project with HTML and CSS first

Go back to the portfolio pen link. Copy and paste the HTML (Hyper Text Markup Language) and CSS into your own workspace creating your pen first.

Personalise both the HTML and CSS to suit your needs. Don't be afraid it is just text, change the text and see how it looks. Then change the styling.

Run the analyse HTML chevron to make sure there are no syntax mistakes. Note that 2 external libraries have been added to the boiler plate.

I have commented the file with notes. If you want to write your own notes the syntax for comments in HTML.

```HTML
<!-- comments in HTML -->
```

```CSS
/* comments in CSS */
```

```JavaScript
// comments in JavaScript
```

In the CSS, I have marked the sections with CSS-Grid and CSS-FlexBox, these help in creating flexible layouts, using comments. CSS Tricks is another great resource if you find documentation trying is [CSS Tricks](https://css-tricks.com/)

Only when you are happy with how the page looks for you progress to the JavaScript section.

## JavaScript fundamentals - a reductionist view

The key characteristics of JavaScript as a programming language are:-

1) JavaScript needs an environment in which it operates, in the frontend this is the browser in the backend, it is the Node environment which uses JavaScript outside the browser

2) It is a script that is compiled by the browser's JavaScript Engine

3) The JavaScript engine then reads or parses the code and executes the commands that are written in the body of the code

4) JavaScript is dependent on an "event" or a user interaction and uses this event to run a block of commands or code. For example the `onClick` event will be triggered and a code block or set of commands run when a user clicks on a button, link or a part of the website. There are several other events like `onMouseOver` that is when the mouse is moved over an HTML element or part of a page or `onSubmit` when a button is clicked to submit form data, are some other examples.

5) JavaScript can use the DOM-tree to change the behaviour of HTML and CSS. JavaScript can target each HTML tag and CSS selector. It can target these tags and selectors because browsers read HTML and CSS and programs that run inside the browser engine, converts these files into a Document Object Model (DOM).

There is [a more detailed section on fullstack JavaScript](https://sumisastri.github.io/dev-blogs/fullstack-JavaScript/) in this blog.


## How JavaScript changes the behaviour of HTML and CSS tags and selectors

To understand the power of JavaScript and how it can change HTML and CSS tags and selectors, it is useful to understand a little more about how browsers parse information on a web page.

Once a browser sees a JavaScript `<script>` tag injected into a `.html` page, it will parse the JavaScript first and only then read the HTML and CSS files. This injection of JavaScript into HTML is known as "hydration" of the DOM-tree.

The DOM, is like a tree is representing every branch of the HTML document and its CSS styling. 

This DOM-tree is stored in memory or the cache of the computer. The DOM is an API, that queries HTML and CSS and returns an object, of all the HTML elements on a page in a tree-like structure.

JavaScript accesses this DOM-tree and then is run on each node (the individual HTML elements on a page) and then mutates or changes the node, or the HTML element or CSS attribute's behaviour. 

JavaScript can therefore mutate or morph the DOM-tree node by node (or HTML element by HTML element/ CSS attribute by CSS attribute). This process of injecting JavaScript into each node, element and attribute is therefore called the process of hydration.

Interpreting how the change is created is called "diffing" or checking how one version differs from the other, the differential. Algorithmns, or code blocks written to check the "diff" or differential, perform an operation that is known as "tree-shaking".

Hydration is performed to change the behaviour of an HTML element or CSS selector, while tree-shaking is performed to understand how this change has been created.

This illustration from [FreeCodeCamp](https://www.freecodecamp.org/)shows how the tree cascades from the head (and the meta-data in the boiler plate) to the body and all the elements within the body tags.

JavaScript accesses these elements and uses functions - or algorithms,or blocks of code, or a set of rules or instructions which are all synonmns - to change the behaviour of HTML element and CSS attributes.

With this broad overview, you can now go back to the Traffic Light Pen [https://codepen.io/sumisastri/pen/zyzPZm]

Go to this function written on Line 15 to deconstruct it:-

```JavaScript
function illuminateGreen() {
  clearLights();
  document.getElementById("goLight").style.backgroundColor = "green";
}
```

The function called `illuminateGreen(){}` returns 2 instructions. To clear the lights and to go to the HTML DOM-tree, find the element with the id of "goLight", access the style attribute, specifically to access the background color and change it to green.

The function or set of instructions written here is called declaring the function. Or outlining the set of instructions that you expect the function to perform.

To make the function work, the function must be called or invoked to get executed - or do what it has declared it will do.

Go to Line 3, here we are selecting from the DOM-tree the HTML button element by its id. When the user clicks the button, the function is executed, or runs, or is invoked.

```JavaScript
document.getElementById("goButton").onclick = illuminateGreen;
```

Now look at all the functions written or declared and see where they are invoked. Understand the DOM-tree and the elements that are being selected by JavaScript. See if you can figure out what the `clearLights(){}` function's set of instructions are. See where it is executed, called or run. You will be right if you say the function is called within the other functions to illuminate the traffic light!

## How JavaScript stores different types of data

JavaScript stores and changes data with the simple power of functions.

**Primitive data or scalar values are**

- Strings (words and letters), which are recognised by the browser parsers when single or double quotes are used "this is a string of words", 'this is also a string of words'. Use either but stay consistent within your code base.

- Cardinal numbers (a special characteristic of JavaScript is numerals that are written out as strings are also recognised as numbers). Ordinal numbers (1st/ 2nd/ 3rd) are treated as strings as are Roman numerals (I, II, III).

- Booleans -( true/false statements)

**Complex data types are**

- Arrays which are recognised by parsers with the square brackets [] they are zero-indexed set of elements, separated by commas.

A zero-index means that the first element is 0 not 1.

We will be using arrays to store our images in our carousel slider. So look out for them. They can store strings, numbers and booleans. Images are stored as strings. Strange, but true.

- Objects which are recognised by parsers with the curly braces `{}`.

They are an unordered list of key-value pairs.

```JavaScript
{
  name:'Joe',
  age: 5,
  adult: False,
  favouriteFood: ['peas', 'beans', 'eggs'],
  {parent: 'Mr Blog',
  phone: 123456}

}
```

Each key is separated from its value by a colon. The value can be any data type - strings, booleans, numbers and even arrays.

While an object can contain an array, an array can not contain an object. An object can even contain another object, making it a very flexible data type.

Each key-value pair is separated by commas. The last key-value pair - in this case another object - does not have a comma after it.

## JavaScript in action with a simple image slide show

Now go back to the Portfolio Pen and look at the JavaScript. I have used a [YouTube tutorial by Brad Traversy](https://www.youtube.com/watch?v=4YQ4svkETS0). If you want to follow and code along with Brad, I would encourage you to try it.

The code has been written in ES6 updates - note how a function now is assigned to a variable to store the `const changeImg = () => {}`.

The keyword "function" has been dropped and the arrow is used to return the function's arguments- which are to check the number of elements (in this case the images) in the array.

A conditional statement runs the code. A conditional statement is a JavaScript design pattern that says

```JavaScript
if (some condition is met){do this
} else{
do this
}
```

Our code says, check the length of the array by counting the number of elements by their index number. If there are elements in the array (the element count stops at -1 , indicating the end of the number of elements in the array) do this - add the next element to the index of elements symbolised with the double plus mark ++(add 1 more image in this case). Else go back to 0, the index of the first image.

The index in an array is notated square brackets or [index] as in the code in the Portfolio pen. It is often notated with just an i, like so [i] as you will see in the the documentation from W3 schools or Mozilla.

[W3](https://www.w3schools.com/js/js_if_else.asp)

[Mozilla](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Conditional_Operator)

The images change every 2000 milliseconds or 2 seconds, you can speed up the change or slow it down and see how you want the slide-show to function.

If you are happy with your portfolio site and want to host it on an URL (Unique Resource Locator) [Part 5 of Learning to Code](https://sumisastri.github.io/dev-blogs/learn-to-code-getting-started/part5-how-the-internet-works/) concludes this series with instructions of how to deploy your project with [Netifly](https://www.netlify.com/) and a quick understanding of internet, the environment  and framework, within which web development works.
