void flutter_commands()
{
	flutter create project name		// creates a new project 
}


// how we extend the code from the flutter SDK 
import 'package:flutter/material.dart';



// 
void main() => runApp(MyApp());		// if the function is one liner than you can write it like this

void main ()
{
	runApp(MyApp());
}


// extend keyword allows the current class (the child class) to inherit all the properties/methods of the base class ""()
// and you can can also write your own functions/methods.
class MyApp extends Stateless widget{

// A widget’s main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
// returns only one paramter that is the context ""
// A widget always need to return a widget in the build function

	build(BuildContext context){
		return MaterialApp(home: Scafflod(appBar: AppBar(title: Text("Welcome Home"),),),);			
	}
}

void flutter_basic()
{
	
}
