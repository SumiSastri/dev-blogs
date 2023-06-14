## What is Babel?

For many years there was no innovation on JavaScript code. This made it almost obsolete.
ES1 - Brenden Eich 1997 apocraphally written in 10-days
ES2 - 1998
ES3 - 1999
ES5 - 2009
ES6- 2015
ES13 (current-2022)

With ECMA the European Computer Manufacturers Association's intervention, JavaScript now is maintained and updated regularly. Early modules of JavaScript still run on the web and newer modules need to be transpiled so that there is uniformity over the code base for browsers to parse(read/ understand) the code.

There are over 100 languages that are transpiled back into JavaScript today. TypeScript and Babel are 2 popular transpilers.

Babel tanspiles the lastest version into ES-6 code into ES-5, created by an Australian software developer, Sebastian McEnzie. To work with Babel you can use the in-browser transformer which transpiles at run-time. Browser compatibility is what is aimed for and Kanga is a site that shows JavaScript cross-browser compatibility. There are several old browsers like iei (first gen internet explorer) that are in existence as well as browsers with a smaller market share like opera that need to be supported.

Babel is a toolchain that is mainly used to convert ECMAScript 2015+ code into a backwards compatible version of JavaScript in current and older browsers or environments. ECMAScript 2015+ equals to ES6+. You can think of Babel as a translator. ES6+ JS offers us many new features and syntaxes. They can tremendously improve our development efficiency. But at this moment, most of these new features are unrecognizable in browsers. To find a balance between compatibility and development convenience and efficiency, Babel was developed.

Programmers write codes in ES6+ and then ask Babel to translate them into codes browsers can understand.
Babel itself can only handle translating new syntaxes. ES6+ has also added many new features like Promise, Map, Object.assign(), etc. New API means new objects, properties, and methods. To deal with them, we have to add these APIs into ES5. This job is done by an assistant of Babel. In conclusion, Babel translates new syntaxes and its assistant handles new APIs.

Other transpilers are google's Traceur - this is an experimental transpiler and not as feature-rich as Babel.
TypeScript has a transpiler and sometimes is compared to Babel but it is a language - a superscript of JavaScript. The primary function of TypeScript is to transpile TypeScript to JavaScript, it happens to have a transpiler but that is not its core function. Babel is not a language, its core function is transpiling.

Babel is made up of several node packages - babel-core (the core transpiler)/ babel-cli (the command-line-interface) it has babel-core as a dependency/ babel-plugin-<plugin-name>(specific tranformers and task runners)/ babel-preset-<preset-name> (groups together similar plugins for easy consumption eg: es-2015)

- Like webpack, Babel requires a module system for files.

  - globals - global code (hard to debug)
  - IIFEs - immediately invoked function expressions
  - AMDs - async module definition
  - UMDs - universal module definition (mixes CommonJS with AMDs)
  - CommonJS
  - ES6-ES13 (at the time of writing 2022)

  Courses:

  Babel [https://app.pluralsight.com/library/courses/babel-get-started/table-of-contents]
