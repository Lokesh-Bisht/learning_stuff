<h1>JS  methods</h1>

```js
document.getElementById("demo").innerHTML = "Hello JavaScript";		// JavaScript Can Change HTML Content
document.getElementById("demo").style.fontSize = "35px";		// JavaScript Can Change HTML Styles (CSS)
document.getElementById("demo").style.display = "none";			// JavaScript Can Hide HTML Elements
document.getElementById("demo").style.display = "block";		// JavaScript Can Show HTML Elements		
```


<h1>Where to put JavaScript in html</h1>
<ul> <li>In HTML, JavaScript code is inserted between <script> and </script> tags.<br>

```js
<script>
	document.getElementById("demo").innerHTML = "My First JavaScript";
</script>
```
</l1>

<li>JavaScript can be placed in <head> or <body> section of an HTML page. Placing scripts at the bottom of the <body> element improves the
display speed, because script interpretation slows down the display.</li>

<li>External JavaScript: External scripts are practical when the same code is used in many different web pages.<br>
To use an external script, put the name of the script file in the src (source) attribute of a <script> tag:

```js
<script src="myScript.js"></script>
```
</li>

<li>External JavaScript Advantages
<ol type = "A"><li>It separates HTML and code</li>
<li>It makes HTML and JavaScript easier to read and maintain</li>
<li>Cached JavaScript files can speed up page loads</li>
</ol>
</li>

<li>External References: External scripts can be referenced with a full URL or with a path relative to the current web page.

```js
<script src="https://www.w3schools.com/js/myScript1.js"></script>
```
</li>
</ul>

<h1>JavaScript Display Possibilities / How to output in JS</h1>
JavaScript can "display" data in different ways:
<ul><li>
Writing into an HTML element, using innerHTML.</li><li>
Writing into the HTML output using document.write().</li><li>
Writing into an alert box, using window.alert().</li><li>
Writing into the browser console, using console.log().</li></ul>

<h2>Using innerHTML</h2>
To access an HTML element, JavaScript can use the document.getElementById(id) method. The innerHTML property defines the HTML content:

```js
<p id="demo"></p>
<script>
	document.getElementById("demo").innerHTML = 5 + 6;
</script>
```
<h2>Using document.write()</h2>
For testing purposes, it is convenient to use document.write(). <br>
<b>Note: </b>Using document.write() after an HTML document is loaded, will delete all existing HTML.

```js
<script>
	document.write(5 + 6);
</script>
```

<h2>Using window.alert()</h2>

```js
<script>
	window.alert(5 + 6);
</script>
```

You can skip the window keyword. Specifying the window keyword is optional.<br>
In JS, the window object is the global scope object, that means that variables, properties, and methods by default belong to the window object.


```js
<script>
	alert(5 + 6);
</script>
```

<h2>Using console.log()</h2>
For debugging purposes, you can call the console.log() method in the browser to display data.

```js
<script>
	console.log(5 + 6);
</script>
```

<h2>JavaScript Print</h2>

JavaScript does not have any print object or print methods. You cannot access output devices from JavaScript.
The only exception is that you can call the window.print() method in the browser to print the content of the current window.

```js
<button onclick="window.print()">Print this page</button>
```

<h1>Types of variables you can declare in JS </h1>
<ul><li><b>var: </b>This keyword is used to declare variables in JS. var has a function scope, not a block scope so
<ol><li>If you use var outside of a function, it belongs to the global scope.</li>
<li>If you use var inside of a function, it belongs to that function.</li>
<li>If you use var inside of a block, i.e. a for loop, the variable is still available outside of that block.</li></ol>

<li><b>let: </b>let has a block scope. let is the block scoped version of var, and is limited to the block (or expression) where it is defined.</li>

<li><b>const: </b>same use as c++ i.e., it is used to declare constant variables.</li></ul>

<h1>JS datatypes</h1>
<ul><li>JavaScript has dynamic types. This means that the same variable can be used to hold different data types:<br>

```js
var x;           // Now x is undefined
x = 5;           // Now x is a Number
x = "John";      // Now x is a String
```

</li>
<li><b>JavaScript Arrays: </b>JavaScript arrays are written with square brackets.<br>

```js
var cars = ["Saab", "Volvo", "BMW"];
	or
var cars = new Array("Saab", "Volvo", "BMW");
```
</li>

<li><b>JavaScript Objects: </b>Object properties are written as name:value pairs, separated by commas.<br>

```js
var person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
```
</li>

<li><b>Undefined: </b>In JavaScript, a variable without a value, has the value undefined. The type is also undefined.Any variable can be
emptied, by setting the value to undefined. The type will also be undefined.

```js
var car;
var x = 5;
x = undefined;

// An empty value has nothing to do with undefined.
var car = "";    // The value is "", the typeof is "string"
```
</li>

<li><b>Null: </b>In JavaScript null is "nothing". It is supposed to be something that doesn't exist. Unfortunately, in JS, the
data type of null is an object. undefined and null are equal in value but different in type.</li>
</ul>

<h1>JavaScript Function Syntax</h1>
A JavaScript function is defined with the function keyword, followed by a name, followed by parentheses ().

```js
function myFunction(p1, p2) {
	return p1 * p2;   // The function returns the product of p1 and p2
}
```

<h1>Objects in JS</h1>
<h2>Object properties</h2>
The name:values pairs in JavaScript objects are called properties. You can access object properties in two ways:

```js
objectName.propertyName 
	or
objectName["propertyName"]
```

<h2>Object Methods</h2>
Objects can also have methods. Methods are actions that can be performed on objects. Methods are stored in properties as function definitions.


```js
var person = {
	firstName: "John",
  	lastName : "Doe",
  	id       : 5566,
  	fullName : function() {
    	return this.firstName + " " + this.lastName;
  	}
};
```

You access an object method with the following syntax:

```js
objectName.methodName()
var name = person.fullName();
```

<h2>New keyword</h2>
When a JavaScript variable is declared with the keyword "new", the variable is created as an object:

```js
var x = new String();        // Declares x as a String object
var y = new Number();        // Declares y as a Number object
var z = new Boolean();       // Declares z as a Boolean object
```
<b>Note: </b>Avoid String, Number, and Boolean objects. They complicate your code and slow down execution speed.


<h1>Array functions</h1>

```js
	var person = ["John", "Doe", 46];
	var size = person.length();				// returns the size of the array
	person.sort();							// to sort the array in ascending order
	var fruits = ["Apple", "Mango"];
	fruits.push("Lemon"); 					// to push a new element in the array. It also returns the size of the array
	fruits.pop();						// removes the last element from the array. It also returns the value of the popped element.
	
	//The splice() method can be used to add new items to an array:
	var fruits = ["Banana", "Orange", "Apple", "Mango"];
	fruits.splice(2, 0, "Lemon", "Kiwi");			// adds 2 element after the 2nd element. 
	fruits.splice(0, 1); 							// removes the first element
	
	// The first parameter (2) defines the position where new elements should be added (spliced in).
	// The 2nd parameter (0) defines how many elements should be removed after the index defined in first parameter.
	// The rest of the parameters ("Lemon" , "Kiwi") define the new elements to be added.
	// The splice() method returns an array with the deleted items:
	
	
	// concat() > used for merging two arrays.
	var arr1 = ["Cecilie", "Lone"];
	var arr2 = ["Emil", "Tobias", "Linus"];
	var arr3 = ["Robin", "Morgan"];
	var new_arr = arr1.concat(arr2);  				// Concatenates (joins) arr1 and arr2
	var new_arr = arr1.concat(arr2, arr3)			// joins arr1, arr2 and arr3
	
	// toString() method is used to convert an array to a string
	var fruits = ["Banana", "Orange", "Apple", "Mango"];
	document.getElementById("demo").innerHTML = fruits.toString();
	
	// Output: Banana,Orange,Apple,Mango
	
	
	
	
	// In JS arrays are objects. typeof operator is used to tell the type of the variable.
	typeof fruits;				// returns object
	
	// To solve this problem ECMAScript 5 defines a new method Array.isArray():
	Array.isArray(fruits);   		// returns true
	
	// The instanceof operator returns true if an object is created by a given constructor:
	fruits instanceof Array;   		// returns true
```

<h1>Difference Between Arrays and Objects</h1>

In JavaScript, arrays use numbered indexes.  <br>
In JavaScript, objects use named indexes. So, basically objects are like map in C++ but they are actually arrays and not BST's.


<h1>Loops in JS </h1>
<ul><li>for - loops through a block of code a number of times</li>
<li>for/in - loops through the properties of an object</li>
<li>for/of - loops through the values of an iterable object</li>
	<li>while - loops through a block of code while a specified condition is true</li>
	<li>do/while - also loops through a block of code while a specified condition is true</li>
</ul>

Since, the syntax of for, while and do while loops is same as in C++ I'm only writing about for/in and for/off loops.

<br>
For/in is same as for each loop in C++.<br>
The JavaScript for/in statement loops through the properties of an object:

```js
var person = {fname:"John", lname:"Doe", age:25};

var text = "";
var x;
for (x in person) {
	text += person[x];
}

// Output: John Doe 25
```

The JavaScript for/of statement loops through the values of an iterable objects<br>
for/of lets you loop over data structures that are iterable such as Arrays, Strings, Maps, NodeLists, and more.<br>
<br>
The for/of loop has the following syntax:

```js
for (variable of iterable) {
  // code block to be executed
}
```

```js
var cars = ['BMW', 'Volvo', 'Mini'];

for (let x of cars) {
	document.write(x + "<br >");
}

var txt = 'Hellp World';
for (let x of txt) {
	document.write(x + "<br >");
}
```

<h1>Arrow functions</h1>
Arrow functions were introduced in ES6.

```js
// Before
hello = function() {
  	return "Hello World!";
}

// with arrow function
hello = () => {
  return "Hello World!";
}

// It gets shorter! If the function has only one statement, and the statement returns a value, you can remove the brackets 
// and the return keyword

hello = () => "Hello World!";

// arrow functions with parameters
hello = (val) => "Hello " + val;

// In fact, if you have only one parameter, you can skip the parentheses as well:
hello = val => "Hello " + val;
```

<h1>this in arrow function</h1>

In regular functions the this keyword represented the object that called the function, which could be the window, the 
document, a button or whatever.<br>
<br>
With arrow functions the this keyword always represents the object that defined the arrow function.
<br>
Let us take a look at two examples to understand the difference.
<br><br>
Both examples call a method twice, first when the page loads, and once again when the user clicks a button.

The first example uses a regular function, and the second example uses an arrow function.

The result shows that the first example returns two different objects (window and button), and the second example returns the window object twice, because the window object is the "owner" of the function.

<br><br>
With a regular function this represents the object that calls the function:

```js
//Regular Function:
hello = function() {
	document.getElementById("demo").innerHTML += this;
}

//The window object calls the function:
window.addEventListener("load", hello);

//A button object calls the function:
document.getElementById("btn").addEventListener("click", hello);
```

<br><br>With an arrow function this represents the owner of the function:

```js
//Arrow Function:
hello = () => {
  	document.getElementById("demo").innerHTML += this;
}

//The window object calls the function:
window.addEventListener("load", hello);

//A button object calls the function:
document.getElementById("btn").addEventListener("click", hello);
```

<h1>JS Objects<h1>

<h2>Displaying the Object in a Loop/Acessing object propeties in loop</h2>

```js
var person = {fname:"John", lname:"Doe", age:25};	// where fname is the property name and "John" is the value

for (x in person) {
  	txt += person[x];
}
```

<h2>Using Object.values()</h2>

Any JavaScript object can be converted to an array using Object.values():

```js
var person = {name:"John", age:50, city:"New York"};

var myArray = Object.values(person);
document.getElementById("demo").innerHTML = myArray;

// Output > Joh, 50, New York
```

<h2>Using JSON.stringify()</h2>
Any JavaScript object can be stringified (converted to a string) with the JavaScript function JSON.stringify():

```js
var person = {name:"John", age:30, city: "New York"};

var myString = JSON.stringify(person);
document.getElementById("demo").innerHTML = myString;
// Output > {"name":"John","age":50,"city":"New York"}
```


<h2>Adding new properties</h1>

```js
person.nationality = "English";
```

<h2>Deleting Properties</h2>

The delete keyword deletes a property from an object. The delete operator is designed to be used on object properties. 
It has no effect on variables or functions.

```js
var person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
delete person.age;   // or delete person["age"];
```

<h2>Object methods</h2>

```js
var person = {
	firstName: "John",
  	lastName : "Doe",
  	id       : 5566,
	fullName : function() {
    	return this.firstName + " " + this.lastName;
  }
};
```
In a function definition, this refers to the "owner" of the function.<br><br>

In the example above, this is the person object that "owns" the fullName function.<br><br>

In other words, this.firstName means the firstName property of this object.

<h2>JavaScript Accessors (Getters and Setters)</h2>


```js
// Getter:
var person = {
 	firstName: "John",
	lastName : "Doe",
  	language : "en",
  	get lang() {
    	return this.language;
  	}
};

// Display data from the object using a getter:
document.getElementById("demo").innerHTML = person.lang;


//Setter
var person = {
  	firstName: "John",
  	lastName : "Doe",
  	language : "",
  	set lang(lang) {
    	this.language = lang;
  	}
};

// Set an object property using a setter:
person.lang = "en";

// Display data from the object:
document.getElementById("demo").innerHTML = person.language;
```

<h2>Why Using Getters and Setters?</h2>
<ul><li>It gives simpler syntax</li>
	<li>It allows equal syntax for properties and methods</li>
	<li>It can secure better data quality</li></ul>
	

<h2>Constructor</h2>

<ul><li>Constructors are used to initialize properties.</li>
	<li>it has to have the exact name "constructor"</li>
	<li>The constructor method is called each time the class object is initialized.</li>
	<li>If you do not have a constructor method, JavaScript will add an invisible and empty constructor method.</li>
<li>Objects of the same type are created by calling the constructor function with the new keyword.</li></ul><br>

```js
function Person(first, last, age, eye) {
  	this.firstName = first;
  	this.lastName = last;
  	this.age = age;
  	this.eyeColor = eye;
}

var myFather = new Person("John", "Doe", 50, "blue");
var myMother = new Person("Sally", "Rally", 48, "green");
```

<h2>The this Keyword</h2>

<ul><li>
In JavaScript, the thing called this is the object that "owns" the code.</li>

<li>The value of this, when used in an object, is the object itself.</li>
<li>
In a constructor function this does not have a value. It is a substitute for the new object. The value of this 
will become the new object when a new object is created.</li></ul>


<h2>Adding a properties and methods to a Constructor</h2>

```js
function Person(first, last, age, eyecolor) {
  	this.firstName = first;
  	this.lastName = last;
  	this.age = age;
  	this.eyeColor = eyecolor;
 	this.name = function() {return this.firstName + " " + this.lastName;};
}
```

<h1>Classs in JS</h1>

```js
class Car {
  	constructor(brand) {
    	this.carname = brand;
  	}
  	present() {
    	return "I have a " + this.carname;
  	}
}

mycar = new Car("Ford");
document.getElementById("demo").innerHTML = mycar.present();
```

<h2>Static methods</h2>

Static methods are defined on the class itself, and not on the prototype.<br>

That means you cannot call a static method on the object (mycar), but on the class (Car):
<br>

```js
class Car {
	constructor(brand) {
    	this.carname = brand;
  	}
  	static hello() {
    	return "Hello!!";
  	}
}

mycar = new Car("Ford");

//Call 'hello()' on the class Car:
document.getElementById("demo").innerHTML = Car.hello();

//and NOT on the 'mycar' object:
//document.getElementById("demo").innerHTML = mycar.hello();
//this would raise an error.


// f you want to use the mycar object inside the static method, you can send it as a parameter:
document.getElementById("demo").innerHTML = Car.hello(mycar);
```

<h2>Inheritance</h2>

Just like c++ extend keyword is used to inherit properties of another class.

```js
class Car {
  	constructor(brand) {
    	this.carname = brand;
  	}
  	present() {
    	return 'I have a ' + this.carname;
  	}
}

class Model extends Car {
  	constructor(brand, mod) {
    	super(brand);
    	this.model = mod;
  	}
  	show() {
    	return this.present() + ', it is a ' + this.model;
  	}
}

mycar = new Model("Ford", "Mustang");
document.getElementById("demo").innerHTML = mycar.show();
```


<ul><li>The super() method refers to the parent class.</li>
	<li>By calling the super() method in the constructor method, we call the parent's constructor method and gets access 
		to the parent's properties and methods.</li>
	<li>Inheritance is useful for code reusability: reuse properties and methods of an existing class when you create a new class.</li>
</ul>


<h2>"use strict"</h2>

<ul><li>The syntax in classes must be written in "strict mode"./<li>
<li>You will get an error if you do not follow the "strict mode" rules.</li>
	<li>Strict mode makes it easier to write "secure" JavaScript.</li>
	<li>In normal JS, mistyping a variable name creates a new global variable. In strict mode, this will throw an error, making 
		it impossible to accidentally create a global variable.</li>
	<li>Using a variable, without declaring it, is not allowed
		
```js
"use strict";
x = 3.14;                // This will cause an error
```
</li>

<li>Objects are variables too. Using an object, without declaring it, is not allowed.
	
```js
"use strict";
x = {p1:10, p2:20};      // This will cause an error
```

</li>

<li>Deleting a variable (or object) is not allowed. Deleting a function is not allowed.
	
```js
"use strict";
var x = 3.14;
delete x;    
function x(p1, p2) {};
delete x;                // This will cause an error

// Duplicating a parameter name is not allowed:

function x(p1, p1) {};   // This will cause an error


// Octal numeric literals are not allowed:
var x = 010;   			 // This will cause an error
```
