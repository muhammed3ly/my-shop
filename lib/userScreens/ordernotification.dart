import 'package:flutter/material.dart';

class OrderNotification extends StatefulWidget{
  @override
  _OrderNotificationState createState() => _OrderNotificationState();
}

class _OrderNotificationState extends State<OrderNotification>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Notification'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('OrderNotification'),
      ),
    );
  }
}