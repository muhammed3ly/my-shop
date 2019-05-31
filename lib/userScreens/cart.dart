import 'package:flutter/material.dart';

class Cart extends StatefulWidget{
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('Cart'),
      ),
    );
  }
}