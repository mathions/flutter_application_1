import 'package:flutter/material.dart';
import 'screen/HomeScreen.dart';
import 'screen/RegisterScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
      routes: {
        '/home' : (context) => HomeScreen(),
        '/register' : (context) => RegisterScreen(),
      }
    ) //MaterialApp
  );
}

