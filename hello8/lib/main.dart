import 'package:flutter/material.dart';
 
void main () => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter v8',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Hello Flutter v.8 Button Press'),
      ),
      body: Center(
        child: HomeButton(),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Hello'),
      onPressed: () {
        // aksi yang dilakukan
        action(context);
      },
    );
  }
}

void action(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Button Press'),
    content: Text('Berhasil Di Press !'),
  );

  // menampilkan alert dialog
  showDialog(
    context: context,
    builder: (BuildContext contex) {
      return alertDialog;
    }
  );
} 