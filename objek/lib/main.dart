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

class Home extends StatelessWidget {
  final String title = 'Tangkuban Prahu';
  final String location = 'Bandung, Jawa Barat';
  final String description =
      '"Tangkuban prahu atau gunung tangkuban prahu adalah salah satu gunung yang terletak di provinsi jawa barat, indonesia. sekitar 20 km ke arah utara kota bandung, dengan rimbunan pohon pinus dan hamparan kebun teh di sekitarnya, gunung tengkuban perahu mempunyai ketinggian setinggi 2.084 meter"';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'asset/img/tangkubanPraku.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 130.0,
              ),
              Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
