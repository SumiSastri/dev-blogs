---
layout: default
parent:  Fullstack JavaScript
nav_order: 14
title: Complex data types in JavaScript
last_updated: Feb 2024
---

# Complex data types in JavaScript 

In JavaScript, everything is considered an object with prototypal inheritance. As we have seen strings, numbers and booleans are also literals - which are methods by which the global JavaScript Object creates or constructs primitive data.

Therefore, the object is the only main complex data type and all other data types are JavaScript design patterns.

That much said, objects, arrays and functions are considered complex data types.

####  Objects as unordered lists

In JavaScript, an object is an associative array, augmented with a prototype using classes & constructors for inheritance of the values, properties and methods associated with the class.

JavaScript uses prototypes where other programming languages use classes. 

Classes were introduced in ES5. The European Computer Manufacturers Association or ECMA update and standardize JavaScript introducing new features that are cross-browser friendly. ES-5 is the last version of JavaScript that is cross-browser friendly. The new features from ES-6 onwards need Babel and other libraries to transpile code into ES-5.


#### What is prototypal inheritance and the prototype chain?
 
Prototypal inheritance means you can base the functionality of an object based on another object. At the top of the prototype-chain is the object prototype. 

From this object prototype, everything can be converted into an object. 

To test this out with the variable, `const dogName = "Scooby"` if you log `this.dogName` you will get "Scooby" - this is returned from the global object, which is the object prototype, the `object.prototype` is at the head of the prototype chain. 

[The prototype chain docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)


The other 8 prototypes are:-

```JavaScript
array.prototype
string.prototype
number.prototype
boolean.prototype
date.prototype
function.prototype
error.prototype 
regEx.prototype
```

Prototypes are not to be confused with the primitive / literals:-
"" (empty strings, or strings with values)
9  (a number as a number)
true || false  (as booleans)
{} (empty objects)
[] (empty arrays)
() => or function (){} (as empty functions)
/()/ (empty regEx)

`Math()` is not on the list, it is a global object and is formed by a global Math constructor. You can assign `new Object()` to a variable `var car = new Object()` . You can not assign `Math()` with the `new` key word to a variable.  They inherit all the properties and methods in the `Math()` constructor. To access these properties, for example, `Math.round()` this refers to the constructor state.

#### What are objects created by the `object.prototype` method?

Objects are a collection of data - strings, booleans, numbers (properties) and functions (methods) that are created by the object prototype. Everything in JavaScript is an object as we have seen above. Each object prototype is a function that creates the other complex data-types - Arrays, Functions, Dates, Errors.

Fundamentally, objects literals, that are created from the `object.prototype`, are an unordered list of key-value pairs or properties or name-value pairs. 

Keys/Names of the property they  describe the values they hold. Values can be any data type - strings, numbers, booleans, arrays, objects and functions. Keys and values are separated by colons.  This is the difference between props, prop names and prop values.

The variety of data types that the object can hold makes them the most versatile of data-types in JavaScript. When a function is called from an object, it is called a method. 

- Props of objects are readable, writable and configurable. 
- They can be changed with the get and set methods
- They also pass on all properties to clones
- Inheritance of the prototype properties is a key feature of properties

Object Syntax:
Notated as an empty object `{}` with curly braces, objects hold props as key-value pairs. 
 
Keys separate the value with a full colon and each name-value pair `property:value`  is comma separated. 

```JavaScript
let dogName ={
   name: "Susanna",
   breed: "Boxer"
} 
<!-- properties - name & breed
property value - Boxer - a string
property names - name & breed delineated from their values with a colon -->
```

Keys identify the position in the list is the key of the key-value pairs. The global object prototype therefore has the method `Object.keys()` which allows you to iterate through each of the key-value pairs and identify information you need to isolate.

 [Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)

 Objects can typically hold a lot of information. To identify information encapsulated in an object the `this` key word points to the object that holds the information, in this case the musicItem object

```JavaScript
let musicItem = {
 firstName: 'Harry',
 lastName: 'Styles', 
 singles: ['Meet me in the Hallway','Sign of the Times', 'Carolina', 'Two Ghosts'], 
 firstHit: 2001,
 genres: {
    softRock: true, 
	britPop: true, 
	hardRock: false
},  
fullName: function() {
			return this.firstName + ' ' + this.lastName;
		}
};
```

Without the named variable musicItem, the object is merely declared and can not be reused in the code base. Object declaration is fine, but it needs to be assigned to a variable, the variable then becomes the temporary hold of the object's value. 

Dot notation is used to identify the values of the list items using the variable name and the key of the object and the `this` key word.

```JavaScript
let dog = {
	name: 'Banjo',
	species: 'phyllum cordata',
	weight: 25,
	size: 12,
	eats: [ 'chicken', 'meat', 'bones' ],
	owner: {
		firstName: 'Jack',
		lastName: 'Jones',
		phoneNumber: 12345,
		fullName: function() {
			return this.firstName + ' ' + this.lastName;
		}
	},
	dogBmI: function() {
		return this.weight / this.size;
	}
};

```

####  What does the `this` keyword mean?

The `this` key word is important in an object because it is an unordered list, with an array, as we will see later in this section, the element index provides specific reference. This is a number and therefore, an array is an ordered list, not an unordered list as is an object.

 The `this` keyword serves to bind the object and all its key-value pairs or properties (props) to the object it is pointing to. 

 If you access the dog owner's full property, in the dog object, without `()` the parenthesis, it will return the function declaration `function() { return this.firstName + " " + this.lastName; }` as a literal.
 
 This demonstrates how the lexical key word `this` binds the function declaration to the object in which it is declared in. Try this in the google console - `dog.owner.fullName` versus `dog.owner.fullName()`.
 
 The binding of the function happens only at invocation time. So only when we call the function, the `this` key word is bound the to object it is assigned to. This makes the function reusable and more flexible. It is also specific and relevant to the object it is being called from. 

 In managing state (the behaviour of data) either in the frontend using JavaScript, or in the backend, this behaviour becomes very evident and the importance of the `this` key word becomes relevant when you are fetching and querying data, as well as if you are mutating data - editing it, or deleting it or indeed, if you are creating new data in the form of an object.
 
 Take the objects musicItem and dog. We have the same props written in both objects. The static props - firstName & lastName, as well as the same function `fullName()`.
 
 They return different values because the `this` key word binds them to the objects they are encapsulated in.

 ```JavaScript
console.log('logs method for full name MUSICIAN', musicItem.fullName());
console.log('logs method for full name DOG OWNER', dog.owner.fullName());

<!-- OUTPUT -->
logs method for full name MUSICIAN Harry Styles
logs method for full name DOG OWNER Jack Jones
```

Static props binding example:-

```
console.log(dog.owner.firstName, 'logs dog-owner first name - implicit binding of THIS DOG.OWNER');
console.log(musician.firstName, 'logs musician first name - implicit binding of THIS.MUSICIAN');

<!-- OUTPUT -->
Jack logs dog-owner first name - implicit binding of THIS DOG.OWNER
Harry logs musician first name - implicit binding of THIS.MUSICITEM
```

####  The utility value of assigning your data to an object

Objects are readable and writable, which means you can add, update and delete props in an object. 

- Adding props
Using dot notation, a new prop can be added ```dog.favouriteToy = 'rag doll';``` If you log the object again, the new prop will be added. 

- Updating existing props
By using dot notation you can access the the prop and update the value by reassigning the value as you would with a variable ```dog.name = 'Toulouse';```

- Permanantly delete existing props - delete is a key word and should be used sparingly. 

Once deleted a prop can not be retrieved. It is best practice to reserve this method only for static props not methods in a prop. 

If used on a predefined JavaScript object that has been encapsulated & instantiated, the application can crash. 

Like all other methods, it simply requires you to use the delete key word and dot notation, the prop - key and value will be deleted permanently ```delete dog.favouriteToy;```

This is especially useful for API (Application Protcol Interface) data calls in the network layer.

####  How to check the properties of an object

The ```hasOwnProperty``` method checks the props of the object in a strict boolean check returning the value only if one exists. The param checkProp must be passed a string.

```
function checkDog(checkProp) {
	if (dog.hasOwnProperty(checkProp)) {
		return dog[checkProp];
	} else {
		return 'Not a valid property for your dog object';
	}
}

function checkPrimate(checkProp) {
	if (primate.hasOwnProperty(checkProp)) {
	}
}

<!-- note the property must be declared in the param as a string -->
console.log('boolean check checkDog(checkProp) LOGGED TRUE', checkDog('species'));
console.log('boolean check checkDog(checkProp) LOGGED FALSE', checkDog('clown'));

<!-- OUTPUT -->
boolean check checkDog(checkProp) LOGGED TRUE phyllum cordata
boolean check checkDog(checkProp) LOGGED FALSE Not a valid property for your dog object
```

#### Constructors as a blueprint of an object

You can create duplicates of an object with the constructor method. The constructor method is a function that creates a blueprint of an object making it reusable. This is executed with the reserved JavaScript keyword ```new```.

The new object has different values for the same keys in the prop.

The first step is to encapsulate all the information in the constructor. The naming convention of a constructor, is with Upppercase.

```JavaScript
const Dog = function() {
	let name, breed;
};
```

Once the constructor function has been declared - the function returns the variables that are going to be used in the duplicate object, you need to create a new instance of the object with the function params.

```
d1 = new Dog();
d1.name = 'Kaiser';
d1.breed = 'German Shepherd';

d2 = new Dog();
d2.name = 'Ginger';
d2.breed = 'German Shepherd';

console.log(d1);
console.log(d2);
console.log(d1.name, d1.breed);
console.log(d2.name, d2.breed);

<!-- OUTPUT -->
Dog { name: 'Kaiser', breed: 'German Shepherd' }
Dog { name: 'Ginger', breed: 'German Shepherd' }
Kaiser German Shepherd
Ginger German Shepherd
```

As you can see from this example the blueprint allows you to use the encapsulated variable of name and breed with 2 different dogs acting as a blueprint.

The implicit binding of `this` to the 2 instances of the Dog constructor, provides you the 2 different instances of the object with different information. 

Each instance has its own props with different values but the same keys.

If we log the `this` key word in the constructor, we see 2 instances of empty objects and the prototypal inheritance.

Which again proves the `this` key word is tightly coupled to the object that it refers to and has no instrinsic meaning of its own.

```
const Dog = function() {
	let name, breed;
	return console.dir(this);
};
<!-- OUTPUT -->
Dog {}
Dog {}
```

#### Classes and constructors what is the difference?

- Objects encapsulate and instantiate one object
- Constructors encapsulate one object with the power to instantiate many objects and create a blueprint
- Classes are superpowered objects and constructors. They are functions with custom constructors using the `this` key word to bind the arguments of the function to the class.

eg:

```
class Vehicle {
	constructor(make, model, color, numberOfDoors, fullTank, distanceOnFullTank) {
		this.make = make;
		this.model = model;
		this.color = color;
		this.numberOfDoors = numberOfDoors;
		this.fullTank = fullTank;
		this.distanceOnFullTank = distanceOnFullTank;
	}
	fuelConsumption() {
		return this.fullTank/this.distanceOnFullTank;
	}
}

const fastCar1 = new Vehicle('Maserati', 'GranCabrio A6 1500', 'red', 2, 20, 125);
const fastCar2 = new Vehicle ('Ferrari', 'SF90-Stradale', 'white', 4, 100, 22);
console.log(fastCar1)
console.log(fastCar2)
```
On logging the constructor, you will see how it replicates the information with fastCar1 and fastCar2


[A blog outlining the differences between classes and constructors](https://medium.com/javascript-scene/javascript-factory-functions-vs-constructor-functions-vs-classes-2f22ceddf33e)


## What are arrays?

Arrays are an ordered list rather. They are also known as indexed collections. The index is the key starting from zero and the value is the item in the array that corresponds to the key. The key and value are tightly coupled.

Arrays, unlike objects, are ordered set of values, acessed with the array keys. 

Each item  in the array is called an element and can be accessed with an index. 

As it is zero index based the array is one number more than counting from 1. You can not pass Array(3.1), it has to be a whole item/ number - the error message it will throw is range error.

Elements in an array can be different types - strings, numbers, booleans, objects & another array. This is sometimes where an array can get confusing. As they can be noted by `[{ }]` which is an array of objects.

Arrays are bound together by `[]` square brackets, while objects are bound by curly braces. Arrays are object constructor prototypes `Array()` with built in methods. 

Arrays are readable, writable and enumerable (iterable). 

Under the hood, and Array is a constructor with all the constructor methods. 

If you type `Array.isArray(Array.prototype);` the return is true in the console.

To find a method like key or value
- `Array.prototype.keys()`
- `Array.prototype.values()`

You will get the prototype form and all its methods

```JavaScript
Array Iterator {}
__proto__: Array Iterator
```

### Looping through items in an array

As the key and value are tightly coupled, arrays literals are iterable and offer a true-false answer when you loop through them. The Array constructor under the hood is invoking the ```.next``` method to find whether the key and value strictly match.

When you use the `array.values()` method you are actually invoking the prototype method of the Array constructor `Array.prototype.values()`

```
var beasts = ['ant', 'bison', 'camel', 'duck', 'bison'];
console.log(beasts.values())

<!-- Output -->

Array Iterator {}
[[Prototype]]
: 
Array Iterator
next
: 
ƒ next()
length
: 
0
name
: 
"next"
arguments
: 
(...)
caller
: 
(...)
[[Prototype]]
: 
ƒ ()
[[Scopes]]
: 
Scopes[0]
Symbol(Symbol.toStringTag)
: 
"Array Iterator"
[[Prototype]]
: 
Object
```
The array iterator constructor is using the ```.next``` method in the prototype to loop through all the values in the array and find if the value exists(is true) or does not exist and therefore (is false)

- `(iterator.next().value)`
- `(iterator.next().key)`

### Array as a constructor vs. array literal

```
var arrayData = Array(30);
var arrayData = new Array(30);
```
This  will initialise an array with 30 empty elements

```
<!-- OUTPUT -->

console.log(arrayData)
[empty × 30]
```

Creating a custom constructor for an array - this will create a new array with 4 elements

```JavaScript
let myArray = new Array('Joe', 0, true, 'Blog');
console.log(myArray)
// OUTPUT
(4) ['Joe', 0, true, 'Blog']
```

If you assign the array to a variable with bracket notation as above this makes the array prototype object into an array literal.

When you assign an array to a variable, you are initialising the array this array literal has been initialised to joeBlogs.

```
var joeBlogs  = ['Joe', 0, true, 'Blog'];
console.log(joeBlogs)

// OUTPUT - same as above
(4) ['Joe', 0, true, 'Blog']
```
Change the items of the array by access the key or index and change the value

```JavaScript
joeBlogs[0] = 'Jane';
joeBlogs[3]  = 'garlic';
console.log(joeBlogs)
// OUTPUT
(4) ['Jane', 0, true, 'garlic']
```

You can reassign the value of the data in an array as follows 

```JavaScript
let myArray2 = [ 6, 15, 30, 40 ];
let arrayData2 = myArray2[(0, 2)];
console.log(myArray2)
console.log(arrayData2);
// OUTPUT
(4) [6, 15, 30, 40]
30
```
[MDN quick reference ](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/prototype)
[w3 quick reference](https://www.w3schools.com/jsref/jsref_obj_array.asp)
[Another useful reference ](https://www.dyn-web.com/javascript/arrays/)

### What are array methods?

Array methods are functions performed on an array. They are in-built into the language. Higher order functions are call-back functions performed on an array. Simple array methods either mutate the array, or keep the original array in tact. `array.reverse()`, for example mutates the array.

Methods on arrays can be used by factory functions to change data accessed from API's that are in arrays. The data may be in a format that is required in another format in the front end - for example a number may need to be spelt out, therefore an array of numbers will need the ```array.map()``` method to go through each array, and then the ```.toString()``` method to convert it into words and this may then be used as a param in a factory function.
