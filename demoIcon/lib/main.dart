import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'asset/image/pizza.jpg';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'asset/image/pizza.jpg';
          break;
        case 1:
          fileName = 'asset/image/cake.jpg';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo IconButton'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_pizza),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.cake),
            onPressed: () {
              selectImage(1);
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            this.fileName,
            height: 250.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
