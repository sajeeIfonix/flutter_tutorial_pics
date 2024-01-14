// import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'dart:convert';

import 'models/image_model.dart';
import 'widgets/image_list.dart';

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
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
    final response = await get(url);
    var imageModel = ImageModel.fromJSON(json.decode(response.body));
    setState(() {
      images.add(imageModel);
      counter;
    });
  }

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
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: const Icon(Icons.add),
      ),
    ));
  }
}
