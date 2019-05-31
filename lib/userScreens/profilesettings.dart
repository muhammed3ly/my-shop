import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget{
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        centerTitle: false,
      ),
      body: Center(
        child: Text('ProfileSettings'),
      ),
    );
  }
}