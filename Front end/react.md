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



ReactDOM.render(myelement, document.getElementById('root'));

 
