import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  
  ListTile buttonMenu(text, route) {
    return ListTile(
      title: Text(text),
      onTap:() { Navigator.pushNamed(context, route); } ,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(children: [
          buttonMenu('Home', '/home'),
          buttonMenu('Register', '/register'),
        ]),
      ),
    );
  }
}