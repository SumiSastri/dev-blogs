---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: Primitive data types in JavaScript
last_updated: Feb 2024
---

# Primitive data types in JavaScript

Like all programming languagues JavaScript has data types and methods (or functions) that can alter the behaviour (state) of this data.

The simplest form of data in JavaScript is the variable, which is a temporary store of data, or a cache of information. While variables are immutable (can not be changed) the values can be reassigned. 

The equals sign in a variable is an assignment operator - it does not mean that it is mathematically equal or even that it is equal as a type of data. Types of data are primitive data - strings, booleans and numbers, which we will discuss later in this section. 

JavaScript also has more complex data structures and design patterns such as arrays and objects.

## Variables

A variable is declared or instantiated (make a new instance of), with the `var` key word.  `var a = 5;`

If it is not instantiated, it will default to undefined. A statement is a variable that has been declared or instantiated.

For example, ```var a; ``` will return undefined


You can reassign the value of a variable

``` var b = a; ```

Now a variable with the name b will also be 5.

#### The `let` key word

In modern JavaScript variables are written as `let` and `const`, not as `var`. Global variables notated with the `var` key word tend to pollute the global scope and becomes hard to debug in an extensive code base.

If you want to reassign the value of a variable, `let` is the key word to use. 

```
let a = 5;
let b = a; 
console.log(a)
console.log(b)

```

It is particulary useful in iterative functions - like map, filter, reduce and loops - and reassigning more complex data types.


#### The `const` key word

The store of value of this variable is constant and can not be reassigned. 


```const a = 5;``` 

#### Scope of `var`, `const` and `let` key words

The `var` key word does not adhere to block scope as it is a global variable and can be accessed anywhere in the code base

```
var x = 10
if(x > 5) {
  var y = 20
  console.log(x) 
  var x = 20
}
console.log(x) 
console.log(y) 
```
The answer you will get is 10, 20, 20 as in the code block the variable x in global scope is overwritten or reassigned to 20 in local scope of the code block.

Both `let` `const` adhere to block scope, which means that you have to initialise the variable in global and local scope.  

If you use ```let x = 10``` or ```const x = 10``` with the code block above you will get an error - "Cannot access 'x' before initialization".

This means x has to be intiatiated in the scope of the code block as well to be recognised by JavaScript engines as cached information. To make these variable available to a block of code they need to be hoisted (moved) right to the top of the code block so that the scope is recognised across all lines of code following the instantiation of the variable name and value.

- Read more on [https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75]


## Strings in JavaScript

- Documentation W3 schools [https://www.w3schools.com/jsref/jsref_obj_string.asp]
- WDN [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String]

### What are strings?

A string is a primitive data-type in JavaScript. 

They are held in single or double quotes.  Strings values can hold text, letters, numbers, symbols, punctuation,emojis - so long as they are in quotes JavaScript will recognise the value in quotes as a string type.

String literals are immutable or can't be altered once created. A string literal is a single inverted quote 
'''JavaScript 

` ` 

'''

A string is also JavaScript constructor method. Under-the-hood, it is an object with its own inbuilt methods or functions. 

This can create confusion as the type of a string literal ```"Hello world"``` is not identical to the type of the String object ```new String('Hello world')```. This sometimes enforces unnecessary and confusing typechecks. Typescript was created as a JavaScript superscript to enforce these type checks.

String literals behave like an array held within quotes and thefore several array methods can be used.

#### String methods

```
.length()
.slice()
.splice()
.substring()
.replace()
.charAt()
.localCompare()
```

Some specific string methods
- Remove white space between characters ```.trim()```
- Change to upper case ```.toUpperCase()``
- Change to lower case ```.toLowerCase()```
- Can be split ```.split()```
- Can be joined ```.join()```
- Order can be reversed ```.reverse()```
- Two strings can be concatanated or joined ```.concat()```
- Can escape out of strings (FreeCodeCamp 25:30) 

```
let myStringEscaped ='a string in \'quotes\'';
let myStringWithBackTicks = `'a string'`
let myStringNewLine = 'my string \n\t\\ on a new line\n new line'
console.log (myStringNewLine)
// \n new line
// \r carriage return
// \t tab
// \b backspace
// \f form feed
// \\ backslash
```

#### String literals versus template literals

A string literal is an object, while a template literal is a strictly typed string used as a variable. It is typed in snake case and in capital letters. eg: `const MY_SECRET_PASSWORD = "mysecret123"` Template literals have global scope and can be used across the code base. 

As they are strictly typed the value is immutable - which means `MY_SECRET_PASSWORD` is an unique instance and acts like and id, it can never be reassigned and it will always point to the value assigned to it.

Template literals are often used in separate folders called <constants> in a code base.

Read [more about template literals](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals)

## Numbers in JavaScript

### What are numbers?

Numbers are a primitive data type in JavaScript. 

They are usually held in variables. Simple arithmetic operators like ```+ - * /``` refer to plus, minus, multiply and divide. Modulus or remainder ```%```is represented by the percentage symbol.


eg: `const x = 5; const y = 20;  const add2 = x+y `

Like strings, numbers also have methods

#### Number methods

These are useful in math operations

```
.toString()
.toFixed()
.toExponential()
.toPrecision()
```
S[ee docs](https://www.w3schools.com/js/js_number_methods.asp)

### Not a Number or `NaN`

Not a number is a property of the window object. It is usually an error message when a math operation fails. In modern browsers it is non-configurable and not used as a property that you can write into code. 

eg: In the code block below. `let x = 5 || null` is a statement and can also defined as an expression in JavaScript. An expression is a combination of values, variables, and operators, which computes to a value.

```
let x = 5 || null; 
let y = 10 || null; 
function add2(x,y){
  return x + y
}
add2(x + eggs)
console.log(add2)

``` 

Documentation on [NaN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NaN)

### Null vs. NaN

Null, NaN and Infinity are separate data-types from numbers. Null does not represent 0 in JavaScript but the absence of an object. As all JavaScript data types are objects, to represent the deliberate absence of an object null is used to prevent an error message of undefined.

eg: `let x = null || 1` this means x can will either be 1 or can be reassigned to a new number. Null means this variable is assigned to nothing as a data type and it may be 1 which, as a data type is a number. It is not an undefined data type, it is defined as nothing or a null type.

Documentation on [null](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/null)

### The concept of undefined

Undefined is a default error message in JavaScript.

When the parser does not know how to read the script, it throws an error message of undefined. It is also a property of the window object therefore non-configurable, non-enumberable and non-writable.

Documentation on [undefined](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined)

### The concept of Infinity

Infinity is also a property of the window object and is also non-configurable and non-writable more documentation on i[nfinity ](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Infinity)


### Some quirks with numbers that are not strictly mathematics

As JavaScript is loosely typed ```"1" + 1``` which is a string plus a number can return 2. 
```true + 1``` which is a boolean and a number will return 2.
```false + false``` will return 0.
```5 + "string" ``` will return 5string.
```"string" + false``` will return stringfalse as it concats both
```"string" + "string"``` for the same reason will return stringstring

This is not true with subtraction
```"string" - 5``` will return NaN or not a number.

Division exceptions
```2/0``` returns infinity
```2/-0``` returns minus infinity

Mutliplication exceptions

```infinity * 0``` returns NaN
```"string" * 0``` returns NaN

Modulus can be used to find odd and even numbers (18:13) on the FreeCodeCamp video
However the operator also throws exceptions

```-4 % 2 // -0``` returns minus zero which means nothing in pure maths
```-1 % 2``` returns minus 1
```1 % -2 ``` returns plus 1
```2 % 3 ``` returns plus 2

### Increments and decrements

```++``` show an increment of one ```+=``` means add this to the previous number
``--``` the same is true of decrements

More on FreeCodeCamp Video (18:13-19:04)

```
let a = a + 10;
let a += 10;

let b = b-10
let b -= 10;

let c = c * 5;
let c *= 5;
```

Documentation on [numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)

### Booleans

In programming languages you need a data type that will take only one of 2 answers - yes or no/ true or false / on or off. A great video on [booleans](https://scrimba.com/p/pPPeCy/caJVKfv)
These help execute functions in programming. Everything with a value returns true.
There are certain default boolean values - anything without a value returns false. 

```
NaN
undefined
null
 -0
 " "
 {}
 []
false
 ```

[Documentation on booleans](https://www.w3schools.com/jsref/jsref_obj_boolean.asp)

Booleans are essential for more complex JavaScript design patterns such as conditional statements in functions to work.

### Evaluating conditions as true or false - comparison operators

To find out if a pro
gramming statement is true or false there are certain operators that can be used

- Geater than ```<``` or less than ```>``` in JavaScript this will evaluate whether the second number is greater than or less than the first ```1>2``` or ```2<1``` will both return true, while  ```1<2``` or ```2>1``` will return false

But JavaScript being loosely typed returns interesting results when the two types being evaluated are not numbers. For example, ```"2" < "12"``` will return false because two because alphabetically 12 comes before 2.

- The equals operator ```=```  assigns a value to a variable and is not a comparison operator

- The double equals  ```==``` evaluates two statements once again when the two statements are of mixed types it returns unexpected results ```"12" == "twelve"```  will return false

- The triple equals evaluates if two statements are strictly equals in type as well as value ```===```

- Greater or equal to ```<=``` less than or equal to ```>=```

### Evaluation with the and, not and or logical operators

```10 < 5 && 11 > 12``` evaluates both sides of the operator and returns true or false - in this case true
```||``` or  evaluates both side of the operator and returns true or false
```!``` not ```!=``` not equal in value ```!==``` not equal in value and type

### Truthy and Falsey

The video by Dylan Israel has a good excercise to explore variables that can't strictly be defined as true or false but they are[ somewhat true and somewhat false](https://scrimba.com/p/pPPeCy/caJVKfv)

For eg:
```''``` an empty string is false but an empty string with a ```' '```space is falsey.

#### References

See [Demo of this section in CodePen](https://codepen.io/sumisastri/pen/rNRKEYq)

[Java Script dotcom by PluralSight - free tutorial](https://www.javascript.com/learn)

[Free code camp tutorial](https://www.dofactory.com/tutorial/what-is-javascript) 

<!-- Freecode camp vide 27:00 TO 30:00 CHECK AGAIN NOT CLEAR -->
