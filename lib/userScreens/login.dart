import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Login'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('Login'),
      ),
    );
  }
}