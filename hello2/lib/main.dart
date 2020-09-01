import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Agus',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}