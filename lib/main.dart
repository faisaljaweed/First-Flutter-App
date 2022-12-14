import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("My First Flutter App"),
      ),
      body:Center(
        child: Image(
          image:NetworkImage('https://i.gifer.com/4Cb2.gif'),
        ),
      ),
    ),
  ),
  );
}
