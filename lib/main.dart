import 'package:flutter/material.dart';

import 'musique.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app music',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter app music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Musique> maListeDeMusiques = [
    new Musique('Au DD', 'PNL', 'assets/pnl.jpg', 'urlSong'),
    new Musique('Kuta ubud', 'PNL', 'assets/pnl.jpg', 'urlSong'),
    new Musique('Au DD', 'F430', 'assets/f430.jpg', 'urlSong'),
    new Musique('Au DD', 'F430', 'assets/f430.jpg', 'urlSong')
  ];

  Musique musiqueActuelle;

  @override
  void initState() {
    super.initState();
    musiqueActuelle = maListeDeMusiques[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange[900],
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[],
        ),
      ),
    );
  }
}
