import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              'hello world'), //<<<using a widget element so i can create an alarm icon in the top left corner,
          actions: <Widget>[
            //i think this is positioned there on default as the app bar is at the top of user interface.
            IconButton(
              //<<<calling icon button as this allows me to select my icon of choice, comes with 2 default parameters that need to be there
              icon: const Icon(Icons
                  .access_alarm), //they are 'icon:' and 'onPressed:' icon allows you to select the icon and other things
              onPressed: () {}, //i havent looked into.
            ) //onPressed allows you to give functionality to the button in such you can make the app do something
          ], //when the button is pressed by the user
        ),
        body: Center(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2020/11/27/22/07/naruto-5783102_960_720.png')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'this is tooltip',
        ),
      ),
    );
  }
}
