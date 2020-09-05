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

<h1>React State</h1>

React components has a built-in state object.
<br>
The state object is where you store property values that belongs to the component.
<br>
When the state object changes, the component re-renders.
<br>


<h2>Creating the state Object</h2>

The state object is initialized in the constructor:
<br>

```js
// Specify the state object in the constructor method:

class Car extends React.Component {
  constructor(props) {
    super(props);
    this.state = {brand: "Ford"};
  }
  render() {
    return (
      <div>
        <h1>My Car</h1>
      </div>
    );
  }
}
```


<h2>Using the state Object</h2>

Refer to the <b>state</b> object anywhere in the component by using the <b>this.state.propertyname</b> syntax:
<br>

```js
class Car extends React.Component {
  constructor(props) {
    super(props);
    
    // The state object can contain as many properties as you like:
    this.state = {
      brand: "Ford",
      model: "Mustang",
      color: "red",
      year: 1964
    };
  }
  render() {
    return (
      <div>
        <h1>My {this.state.brand}</h1>
        <p>
          It is a {this.state.color}
          {this.state.model}
          from {this.state.year}.
        </p>
      </div>
    );
  }
}
```

<h2>Changing the state Object</h2>

To change a value in the state object, use the <b>this.setState()</b> method.
<br>
When a value in the state object changes, the component will re-render, meaning that the output will change according to 
the new value(s).
<br>


```js
// Add a button with an onClick event that will change the color property:

class Car extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      brand: "Ford",
      model: "Mustang",
      color: "red",
      year: 1964
    };
  }
  changeColor = () => {
    this.setState({color: "blue"});
  }
  render() {
    return (
      <div>
        <h1>My {this.state.brand}</h1>
        <p>
          It is a {this.state.color}
          {this.state.model}
          from {this.state.year}.
        </p>
        <button
          type="button"
          onClick={this.changeColor}
        >Change color</button>
      </div>
    );
  }
}
```


<h1>Lifecycle of Components</h1>

Each component in React has a lifecycle which you can monitor and manipulate during its three main phases.
<br>
The three phases are: Mounting, Updating, and Unmounting.


<h2>Mounting</h2>

Mounting means putting elements into the DOM.
<br>
React has four built-in methods that gets called, in this order, when mounting a component:
<br>

<ol><li>
constructor()</li>
	<li>getDerivedStateFromProps()</li>
<li>render()</li>
	<li>componentDidMount()</li>
</ol>

The render() method is required and will always be called, the others are optional and will be called if you define them.

<h3>constructor</h3>

The <b>constructor()</b> method is called before anything else, when the component is initiated, and it is the natural place to set up the 
initial state and other initial values.
<br>

The <b>constructor()</b> method is called with the props, as arguments, and you should always start by calling the <b>super(props)</b> 
before anything else, this will initiate the parent's constructor method and allows the component to inherit methods
from its parent <b>(React.Component)</b>.
<br>


```js
// The constructor method is called, by React, every time you make a component:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  render() {
    return (
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```

<h3>getDerivedStateFromProps</h3>

The <b>getDerivedStateFromProps()</b> method is called right before rendering the element(s) in the DOM.

<br>
This is the natural place to set the state object based on the initial props.

<br>
It takes state as an argument, and returns an object with changes to the state.

<br>
The example below starts with the favorite color being "red", but the <b>getDerivedStateFromProps()</b> method updates 
the favorite color based on the favcol attribute:
<br>


```js
// The getDerivedStateFromProps method is called right before the render method:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  static getDerivedStateFromProps(props, state) {
    return {favoritecolor: props.favcol };
  }
  render() {
    return (
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
    );
  }
}

ReactDOM.render(<Header favcol="yellow"/>, document.getElementById('root'));
```

<h3>render()</h3>

The <b>render()</b> method is required, and is the method that actually outputs the HTML to the DOM.


<h3>componentDidMount()</h3>

The <b>componentDidMount()</b> method is called after the component is rendered.<br>
This is where you run statements that requires that the component is already placed in the DOM.

```js
// At first my favorite color is red, but give me a second, and it is yellow instead:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({favoritecolor: "yellow"})
    }, 1000)
  }
  render() {
    return (
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```

<h2>Updating</h2>

A component is updated whenever there is a change in the component's state or props.
<br>

React has five built-in methods that gets called, in this order, when a component is updated:
<br>
<ul><li>getDerivedStateFromProps()</li>
<li>shouldComponentUpdate()</li>
	<li>render()</li>
<li>getSnapshotBeforeUpdate()</li>
	<li>componentDidUpdate()</li></ul>
	

The render() method is required and will always be called, the others are optional and will be called if you define them.
<br>

<h3>getDerivedStateFromProps()</h3>

Also at updates the <b>getDerivedStateFromProps</b> method is called. This is the first method that is called when a component gets updated.

<br>
This is still the natural place to set the state object based on the initial props.

<br>
The example below has a button that changes the favorite color to blue, but since the <b>getDerivedStateFromProps()</b> method
is called, which updates the state with the color from the favcol attribute, the favorite color is still rendered as yellow:


```js
// If the component gets updated, the getDerivedStateFromProps() method is called:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  static getDerivedStateFromProps(props, state) {
    return {favoritecolor: props.favcol };
  }
  changeColor = () => {
    this.setState({favoritecolor: "blue"});
  }
  render() {
    return (
      <div>
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
      <button type="button" onClick={this.changeColor}>Change color</button>
      </div>
    );
  }
}

ReactDOM.render(<Header favcol="yellow"/>, document.getElementById('root'));
```

<h3>shouldComponentUpdate()</h3>

In the <b>shouldComponentUpdate()</b> method you can return a Boolean value that specifies whether React should continue with the rendering or not.
<br>
	
The default value is true.

<br>

```js
// Stop the component from rendering at any update means no update happens the fav color stays red as chageColor method is not executed

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  shouldComponentUpdate() {
    return false;
  }
  changeColor = () => {
    this.setState({favoritecolor: "blue"});
  }
  render() {
    return (
      <div>
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
      <button type="button" onClick={this.changeColor}>Change color</button>
      </div>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```

<h3>render()</h3>

The render() method is of course called when a component gets updated, it has to re-render the HTML to the DOM, with the new changes.
<br>
The example below has a button that changes the favorite color to blue:
<br>

```js
// Click the button to make a change in the component's state:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  changeColor = () => {
    this.setState({favoritecolor: "blue"});
  }
  render() {
    return (
      <div>
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
      <button type="button" onClick={this.changeColor}>Change color</button>
      </div>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```


<h3>getSnapshotBeforeUpdate()</h3>

In the <b>getSnapshotBeforeUpdate()</b> method you have access to the props and state before the update, meaning that even
after the update, you can check what the values were before the update.
<br>

If the <b>getSnapshotBeforeUpdate()</b> method is present, you should also include the <b>componentDidUpdate()</b> method, otherwise 
you will get an error.
<br>

The example below might seem complicated, but all it does is this:
<br>

When the component is mounting it is rendered with the favorite color "red".
<br>

When the component has been mounted, a timer changes the state, and after one second, the favorite color becomes "yellow".
<br>

This action triggers the update phase, and since this component has a <b>getSnapshotBeforeUpdate()</b> method, this method is 
executed, and writes a message to the empty <b>DIV1</b> element.
<br>

Then the <b>componentDidUpdate()</b> method is executed and writes a message in the empty <b>DIV2</b> element:

<br>

```js
// Use the getSnapshotBeforeUpdate() method to find out what the state object looked like before the update:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({favoritecolor: "yellow"})
    }, 1000)
  }
  getSnapshotBeforeUpdate(prevProps, prevState) {
    document.getElementById("div1").innerHTML =
    "Before the update, the favorite was " + prevState.favoritecolor;
  }
  componentDidUpdate() {
    document.getElementById("div2").innerHTML =
    "The updated favorite is " + this.state.favoritecolor;
  }
  render() {
    return (
      <div>
        <h1>My Favorite Color is {this.state.favoritecolor}</h1>
        <div id="div1"></div>
        <div id="div2"></div>
      </div>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```


<h3>componentDidUpdate()</h3>

The <b>componentDidUpdate</b> method is called after the component is updated in the DOM.
<br>

The example below might seem complicated, but all it does is this:
<br>

When the component is mounting it is rendered with the favorite color "red".
<br>

When the component has been mounted, a timer changes the state, and the color becomes "yellow".
<br>

This action triggers the update phase, and since this component has a <b>componentDidUpdate</b> method, this method is executed 
and writes a message in the empty <b>DIV</b> element:

<br>

```js
// The componentDidUpdate method is called after the update has been rendered in the DOM:

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {favoritecolor: "red"};
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({favoritecolor: "yellow"})
    }, 1000)
  }
  componentDidUpdate() {
    document.getElementById("mydiv").innerHTML =
    "The updated favorite is " + this.state.favoritecolor;
  }
  render() {
    return (
      <div>
      <h1>My Favorite Color is {this.state.favoritecolor}</h1>
      <div id="mydiv"></div>
      </div>
    );
  }
}

ReactDOM.render(<Header />, document.getElementById('root'));
```



