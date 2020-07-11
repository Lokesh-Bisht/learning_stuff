void flutter_commands()
{
	flutter create project name		// creates a new project 
		
	How to add a package into your project?
	// make changes in pubspec.yaml file, then run the pub get command
	// introduce the package in the main.dart file so that you can use it's methods/properties
	// Performing Pub get also auto-generates the pubspec.lock file with a list of all packages pulled into the project and their version numbers.
	flutter pub get					// installs/pulls the package into your project. 
}


void project_files()
{
	
	// 	pubspec.yaml => The pubspec.yaml file manages the assets and dependencies for a Flutter app.
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
	
	// this annotation is not necessary but it helps others to better understand your code
	// this tells dart and flutter that we are overwriting a method that already exist in the Stateless widget class
	@override

// A widget’s main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
// returns only one paramter that is the context ""
// A widget always need to return a widget in the build function

	build(BuildContext context){
		return MaterialApp(
			home: Scafflod(
				appBar: AppBar(
					title: Text("Welcome Home"),
				),
				// another widget
				body: Card(child: Columnd(children: <Widget>[
					Image.asset("path to image"), 
					Text("Description of the image")
				],),),
			),
		);			
	}
}

void flutter_basic()
{
	
}
