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
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<String> setting = [
    'Airplane Mode',
    'WLAN',
    'Mobile Data',
    'Bluethooth'
  ];
  List<bool> settingValues = [false, false, false, false];

  void onSwitchChange1(bool value) {
    setState(() {
      this.settingValues[0] = value;
    });
  }

  void onSwitchChange2(bool value) {
    setState(() {
      this.settingValues[1] = value;
    });
  }

  void onSwitchChange3(bool value) {
    setState(() {
      this.settingValues[2] = value;
    });
  }

  void onSwitchChange4(bool value) {
    setState(() {
      this.settingValues[3] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Switch'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(children: <Widget>[
          SwitchListTile(
            value: this.settingValues[0],
            onChanged: (bool value) {
              onSwitchChange1(value);
            },
            title: Text(this.setting[0]),
            secondary: Icon(Icons.airplanemode_active),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[1],
            onChanged: (bool value) {
              onSwitchChange2(value);
            },
            title: Text(this.setting[1]),
            secondary: Icon(Icons.wifi),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[2],
            onChanged: (bool value) {
              onSwitchChange3(value);
            },
            title: Text(this.setting[2]),
            secondary: Icon(Icons.data_usage),
          ),
          Divider(),
          SwitchListTile(
            value: this.settingValues[3],
            onChanged: (bool value) {
              onSwitchChange4(value);
            },
            title: Text(this.setting[3]),
            secondary: Icon(Icons.bluetooth),
          )
        ]),
      ),
    );
  }
}
