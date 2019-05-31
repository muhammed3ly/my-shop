import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget{
  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Address'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('DeliveryAddress'),
      ),
    );
  }
}