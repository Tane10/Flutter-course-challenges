import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("I\'m poor man"),
          ),
          backgroundColor: Colors.blueGrey[700],
        ),
        body: Center(
          child: Image(image: AssetImage('images/coal.png')),
        ),
      ),
    ),
  );
}
