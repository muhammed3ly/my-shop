import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget{
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('AboutUs'),
      ),
    );
  }
}