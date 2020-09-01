import 'dart:convert';

import 'package:flutter/material.dart';

// mengimport file homePage.dart
import './homepage.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData (
        primarySwatch: Colors.yellow
      ),
      home: HomePage()
    );
  }
}