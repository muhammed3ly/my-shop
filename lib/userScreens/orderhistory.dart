import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget{
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('OrderHistory'),
      ),
    );
  }
}