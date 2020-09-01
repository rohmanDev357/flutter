import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Radio Button',
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
  int seleted = -1;

  void onChanged(int value) {
    setState(() {
      this.seleted = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Radio Button'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Jenis Kelamin'),
            RadioListTile(
              value: 0,
              groupValue: this.seleted,
              title: Text('Pria'),
              activeColor: Colors.red,
              secondary: Icon(Icons.group),
              onChanged: (int value) {
                onChanged(value);
              },
            ),
            RadioListTile(
              value: 1,
              groupValue: this.seleted,
              title: Text('Wanita'),
              activeColor: Colors.red,
              secondary: Icon(Icons.group),
              onChanged: (int value) {
                onChanged(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
