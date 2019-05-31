import 'package:flutter/material.dart';

class Messages extends StatefulWidget{
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Messages'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('Messages'),
      ),
    );
  }
}