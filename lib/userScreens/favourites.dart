import 'package:flutter/material.dart';

class Favourites extends StatefulWidget{
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favourites'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('Favourites'),
      ),
    );
  }
}