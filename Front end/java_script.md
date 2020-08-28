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





