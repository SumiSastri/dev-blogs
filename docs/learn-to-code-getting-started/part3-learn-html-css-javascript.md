---
layout: default
title:  Have fun learning to code HTML, CSS & JavaScript
parent: Learn to code - getting started
nav_order: 6
---

# Have fun learning to code HTML, CSS & JavaScript

In this section, you will need to sign-up to [CodePen](https://codepen.io/), an open source sandbox. I share links or pens that I have created in HTML (Hyper Text Markup Language), HTML & CSS (Cascading Style Sheets) and finally HTML, CSS & JavaScript.

You can create your own pens by copying the code and playing with it. Don't worry if you break your code - its part of the process of learning. Just go back and copy my pen and start again!

## The super-fast HTML crash course

I demo the basics of how HTML [with this super fast HTML crash course on CodePen](https://codepen.io/sumisastri/pen/yLgRpZN)

As a brief guide to understanding this pen, HTML was designed in 1990 to share documents over the world wide web. The current version in use is HTML5 with several enhancements to the original text-mark-up language.

As it is a programming language, identifying HTML on a browser starts with meta-tags, or data invisible to the reader but read by a browser that is enclosed in `<> </>` known as opening and closing tags.

Every HTML page, or document, starts with a boiler plate with the opening tag `<!DOCTYPE html>` and the closing tag `</html>`

To create your own HTML pen in CodePen, copy and paste the boiler plate and you can then create the tags that are visible as front-end code.

```HTML

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title Name of your choice</title>
</head>
<body>
  <!--
  This is a comment tag - another meta-tag that is not visible to the front-end of an app but allows you to comment your code.
  -->
</body>
</html>
```

If you have not read **Part 2 of Learning to Code**, I briefly outline the difference between learning to code for front-end web and mobile applications is vs. learning to code for the back-end of an app.

This boiler plate that you copy into your workspace, or pen, is parsed - or read - by the web browsers. If the syntax is wrong and you miss an opening or closing tag, the program breaks and will not run. Each browser has its own JavaScript engine that parses HTML, CSS and JavaScript in a different way.

The reason why computer code is written according to strict rules (the syntax of the code) or protocols is to ensure that there is a uniform, consistent way of writing code that can be read or parsed by different browsers.

This is the right moment to talk about clean code. Clean code is important as a browser will parse `id`, `iD`, `ID` differently as all computer languages are case-sensitive.

Typos will make the difference between code working or breaking. So ensure your code is clean and consistent when you are working in your pen.

There are thousands of HTML tags - the key ones are 6 h-tags for headings. Search engines will rank a `h1` tag the highest in terms of importance and `h6` the lowest. The semantic tags lare self-explanatory.

```HTML
<body></body>
<header></header>
<section></section>
<article></article>
<aside><aside>
<footer></footer>
```

Always check the [documentation](https://www.w3schools.com/html/) from W3 schools. I have used different HTML tags for forms and the W3 tutorial was one of the first that I did before I made the decision to go to bootcamp.

Work on the examples in CodePen and repeat the same examples many times to feel comfortable with HTML as a language and its syntax.

Don't forget to have fun and play in the playpen :-) Experiment with the chevrons - format HTML, analyse HTML, full page view, edit view. The analyse option helps you check mistakes in your code and correct them with helpful hints.

Try and make your own HTML pens that are different from the pen you have copied. Experiment with the inline styling tags and then move on to Pen 2 to get a better understanding of how to style with CSS.

## CSS bouncing balls - an introduction to CSS and styling HTML

Here is a project you can truly make your own. Go to [the CSS bouncing balls pen](https://codepen.io/sumisastri/full/zYNmWoy) copy the HTML and CSS (Cascading Style Sheets) to your own work space and change the shape, sizes and animations in the CSS section. Like HTML, CSS has evolved and the current version is CSS3.

In the HTML pen, you will see the tags used have attributes. Attributes within tags can be used for in-line styling.

```HTML
 <section
  style="background-color:blanchedalmond;"
  >
```

However, this is not best practice. Ideally CSS should be held in a separate file.

CSS files have a file extension `.css` just like an HTML page has a file extension `.html` or a word doc has a file extension `.doc` to identify the file type.

In the boiler plate HTML note that the HTML file is linked to the CSS file in the pen

```HTML
 <link rel="stylesheet" href="index.css">
```

The same background color attribute now can be coded in CSS.

CSS is a language that sets rules for the style of an HTML element. Should the heading be bold, what font-size, should the text be aligned to the center, what should the line-height be. All of these are defined by a set of rules.

A selector selects the property and gives it a value

```CSS
body {
    background-color: green;
}
```

The property selected is the body HTML attribute, and the background color is green. The syntax is the selector, opening and closing curly-braces, the property is the background-color followed by a colon, the code stops when it encounters the semi-colon and closing braces.

Once again, clean-code and being mindful of the small syntax errors that you make can result in coding running or you having to go back and fix the typo in the syntax.

It happens all the time, to experienced coders as well so don't feel bad about it! In the early stages of coding, it is so easy to blame yourself and feel bad. Stay calm as they say and keep coding :-).

In the pen, see how we use a linear gradient and a background image.

To change the background to your pen using the [linear gradient effect this site is handy](https://www.eggradients.com/linear-gradients). There are 300 to choose from and you can add to the 6 bouncing balls more divs with your own design of how the balls bounce and your own animation.

Experiment with the shape and size of the 6 class selector attributes in HTML. Change the class selector to an id selector and experiment with this too.

Read more documentation referring to [Mozilla's HTML, CSS and JavaScript sections](https://developer.mozilla.org/en-US/docs/Learn/CSS). Use W3 Schools as well, get to understand what you are doing and why!

## JavaScript traffic lights pen - an introduction to adding JavaScript to HTML

To boost your confidence, this small exercise is to help you understand the power of JavaScript animation compared with CSS.

JavaScript allows you to interact with every single element of HTML. Like CSS you can access each HTML tag and make it do stuff.

For an easy toe-dip into JavaScript try [the JavaScript traffic lights pen](https://codepen.io/sumisastri/full/zyzPZm).

This pen is the next step. So check you are comfortable with HTML and CSS first.

In the HTML section, note we have not imported the JavaScript file in the meta-tags in the boiler plate.

In the body-tag we now have more semantic tags. We are also using `id` attributes not `class` attributes in the HTML elements meta-data.

In the CSS we are using more selectors, properties and values. We are experimenting with more linear gradients.

Do the same with when you copy the files to your project. Have fun and get familiar with the new CSS and HTML introduced in the project.

Now go to the JavaScript file. See how we can select from the document, by selecting the id in the attribute tag, we change the CSS from black to red.

Note that this change is triggered by the `onClick` of the button - an action that is referred to as an "event" in JavaScript.

Note that the JavaScript files are imported just above the `</body>` closing tag and not in the meta-data in the HTML boiler plate.

Don't worry too much about how this works, have fun and read the next section if you want to delve into some of the fundamental concepts of JavaScript.
