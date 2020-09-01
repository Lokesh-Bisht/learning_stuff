<h1>What is React?</h1>
React is a JavaScript library created by Facebook. React is a tool for building UI components.

<h1>How does React Work?</h1>
<ul> <li>React creates a VIRTUAL DOM in memory.<br><br>
Instead of manipulating the browser's DOM directly, React creates a virtual DOM in memory, where it does all the necessary 
manipulation, before making the changes in the browser DOM.</li>
<br>
<li>React only changes what needs to be changed!<br><br>
React finds out what changes have been made, and changes only what needs to be changed.</li></ul>

<h1>Setting up a React Environment</h1>
If you have NPM and Node.js installed, you can create a React application by first installing the create-react-app.<br>
Install create-react-app by running this command in your terminal:<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C:\Users\Your Name>npm install -g create-react-app
<br><br>
Then you are able to create a React application, let's create one called myfirstreact.<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
C:\Users\Your Name>npx create-react-app myfirstreact	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		// for creating a react app
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
C:\Users\Your Name>cd myfirstreact			
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		// move to the directory
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
C:\Users\Your Name\myfirstreact>npm start		
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     	// to run the react application


<h1>First example</h1>

```js
// index.js
import React from 'react';
import ReactDOM from 'react-dom';

const myfirstelement = <h1>Hello React!</h1>

ReactDOM.render(myfirstelement, document.getElementById('root'));

// index.html:
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>React App</title>
  </head>
  <body>

    <div id="root"></div>

  </body>
</html>
```

<h1>React Render HTML</h1>

React's goal is in many ways to render HTML in a web page.
<br>
React renders HTML to the web page by using a function called ReactDOM.render().

<br>
Display a paragraph inside the "root" element:

```js
ReactDOM.render(<p>Hello</p>, document.getElementById('root'));

<body>

  <div id="root"></div>

</body>
```

<h1>Second example</h1>

```js
// index.js
import React from 'react';
import ReactDOM from 'react-dom';

const myelement = (
  <table>
	<tr>
      		<th>Name</th>
    	</tr>
    	<tr>
      		<td>John</td>
    	</tr>
    	<tr>
      		<td>Elsa</td>
    	</tr>
  </table>
);
ReactDOM.render(myelement, document.getElementById('root'));
```


```html
<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    	<meta charset="utf-8" />
    	<meta name="viewport"
      	content="width=device-width, initial-scale=1" />
    	<title>React App</title>
 </head>
 <body>

    	<div id="root"></div>

  </body>
</html>
```

<h1>The Root Node</h1>

The root node is the HTML element where you want to display the result.
<br><br>
It is like a container for content managed by React.
<br><br>
It does NOT have to be a <b>div</b> element and it does NOT have to have the <b>id='root'</b>:


```js
// html
<body>

  <header id="sandy"></header>

</body>

// js
ReactDOM.render(<p>Hallo</p>, document.getElementById('sandy'));
```

<h1>JSX</h1>

<ul><li>JSX stands for JavaScript XML.</li>
	<li>JSX converts HTML tags into react elements.</li>
<li>JSX allows us to write HTML elements in JavaScript and place them in the DOM without any createElement() and/or appendChild() methods.</li>
<li>JSX is an extension of the JavaScript language based on ES6, and is translated into regular JavaScript at runtime.</li>
	</ul>
	
	
<b>Example 1</b>

```js
// JSX
const myelement = <h1>I Love JSX!</h1>;

ReactDOM.render(myelement, document.getElementById('root'));
```

<b>Example 2</b>

```js
// Without JSX
const myelement = React.createElement('h1', {}, 'I do not use JSX!');

ReactDOM.render(myelement, document.getElementById('root'));
```


With JSX you can write expressions inside curly braces { }.<br>
The expression can be a React variable, or property, or any other valid JavaScript expression. JSX will execute the 
expression and return the result:
<br>

```js
// Here the expression is 5+5
const myelement = <h1>React is {5 + 5} times better with JSX</h1>;
```

<h1>React Components</h1>

Components are independent and reusable bits of code. They serve the same purpose as JavaScript functions, but work in isolation 
and returns HTML via a render function.<br>

Components come in two types, Class components and Function components.


<h2>Create a Class Component</h2>

<ul><li>When creating a React component, the component's name must start with an upper case letter.</li>
<li>The component has to include the extends React.Component statement, this statement creates an inheritance to React.Component, and 
	gives your component access to React.Component's functions.</li>
	<li>The component also requires a render() method, this method returns HTML.</li>
	</ul>
	
```js
// Create a Class component called Car

class Car extends React.Component {
	render() {
    	return <h2>Hi, I am a Car!</h2>;
  	}
}
```

Now your React application has a component called Car, which returns a <b>h2</b> element.<br>

To use this component in your application, use similar syntax as normal HTML: <Car />

```js
// Display the Car component in the "root" element:

ReactDOM.render(<Car />, document.getElementById('root'));
```

<h2>Create a Function Component</h2>

A Function component also returns HTML, and behaves pretty much the same way as a Class components.


```js
// Create a Function component called Car

function Car() {
  	return <h2>Hi, I am also a Car!</h2>;
}
```

```js
// Display the Car component in the "root" element:

ReactDOM.render(<Car />, document.getElementById('root'));
```

<h2>Component Constructor</h2>

If there is a constructor() function in your component, this function will be called when the component gets initiated.
<br>
The constructor function is where you initiate the component's properties.
<br>
In React, component properties should be kept in an object called state.
 <br>
The constructor function is also where you honor the inheritance of the parent component by including the <b>super()</b> statement, which 
executes the parent component's constructor function, and your component has access to all the functions of the parent 
component <b>(React.Component)</b>.


```js
import React from 'react';
import ReactDOM from 'react-dom';

class Car extends React.Component {
  constructor() {
    super();
    this.state = {color: "red"};
  }
  render() {
    return <h2>I am a {this.state.color} Car!</h2>;
  }
}

ReactDOM.render(<Car />, document.getElementById('root'));
```

<h2>Components in Components</h2>

```js
// Use the Car component inside the Garage component:

import React from 'react';
import ReactDOM from 'react-dom';

class Car extends React.Component {
	render() {
    	return <h2>I am a Car!</h2>;
  	}
}

class Garage extends React.Component {
  	render() {
    	return (
      		<div>
      			<h1>Who lives in my Garage?</h1>
      			<Car />
     		</div>
   	 	);
  	}
}

ReactDOM.render(<Garage />, document.getElementById('root'));
```

<h2>Components in Files</h2>

React is all about re-using code, and it can be smart to insert some of your components in separate files.

<br>
To do that, create a new file with a .js file extension and put the code inside it:

<br>

Note that the file must start by importing React (as before), and it has to end with the statement export default Car;.
<br>

```js
// This is the new file, we named it "App.js":

import React from 'react';
import ReactDOM from 'react-dom';

class Car extends React.Component {
  render() {
    return <h2>Hi, I am a Car!</h2>;
   
}
}

export default Car;
```

```js
// Now we import the "App.js" file in the application, and we can use the Car component as if it was created here.

import React from 'react';
import ReactDOM from 'react-dom';
import Car from './App.js';

ReactDOM.render(<Car />, document.getElementById('root'));
```


<h1>Props</h1>

React Props are like function arguments in JavaScript and attributes in HTML.
<br>

<b>Note:</b> React Props are read-only! You will get an error if you try to change their value.
<br>
To send props into a component, use the same syntax as HTML attributes:<br>


```js
import React from 'react';
import ReactDOM from 'react-dom';

// Use the brand attribute in the component:
class Car extends React.Component {
  render() {
    return <h2>I am a {this.props.brand}!</h2>
  }
}

// Add a "brand" attribute to the Car element:
const myelement = <Car brand="Ford" />;

ReactDOM.render(myelement, document.getElementById('root'));
```


<h2>Pass Data</h2>

Props are also how you pass data from one component to another, as parameters.<br>

```js
// Send the "brand" property from the Garage component to the Car component:

class Car extends React.Component {
  render() {
    return <h2>I am a {this.props.brand}!</h2>;
  }
}

class Garage extends React.Component {
  render() {
    return (
      <div>
      <h1>Who lives in my garage?</h1>
      <Car brand="Ford" />
      </div>
    );
  }
}

ReactDOM.render(<Garage />, document.getElementById('root'));
```

If you have a variable to send, and not a string as in the example above, you just put the variable name inside curly brackets:<br>


```js
// Create a variable named "carname" and send it to the Car component:

class Car extends React.Component {
  render() {
    return <h2>I am a {this.props.brand}!</h2>;
  }
}

class Garage extends React.Component {
  render() {
    const carname = "Ford";
    return (
      <div>
      <h1>Who lives in my garage?</h1>
      <Car brand={carname} />
      </div>
    );
  }
}

ReactDOM.render(<Garage />, document.getElementById('root'));
```


Or if it was an object:<br>


```js
// Create an object named "carinfo" and send it to the Car component:

class Car extends React.Component {
  render() {
    return <h2>I am a {this.props.brand.model}!</h2>;
  }
}

class Garage extends React.Component {
  render() {
    const carinfo = {name: "Ford", model: "Mustang"};
    return (
      <div>
      <h1>Who lives in my garage?</h1>
      <Car brand={carinfo} />
      </div>
    );
  }
}

ReactDOM.render(<Garage />, document.getElementById('root'));
```


<h2>Props in the Constructor</h2>

If your component has a constructor function, the props should always be passed to the constructor and also to the 
<b>React.Component</b> via the <b>super()</b> method.
<br>

```js
class Car extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <h2>I am a {this.props.model}!</h2>;
  }
}

ReactDOM.render(<Car model="Mustang"/>, document.getElementById('root'));
```
