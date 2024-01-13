// custom widget

// import flutter helper library
import 'package:flutter/material.dart';
import 'dart:developer';

/*create a class that will be our custom widget.
This custom widget must extend the 'StatelessWidget' base class*/
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // instance variables to track state of the widget
  int counter = 0;

/*Must define a 'build' method that returns the widget that will be rendered*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
          log('FAB pressed');
        },
      ),
    ));
  }
}


