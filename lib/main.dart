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
    new Musique('Euros dollars pesos', 'F430', 'assets/f430.jpg', 'urlSong'),
    new Musique('Slow Down', 'F430', 'assets/f430.jpg', 'urlSong')
  ];

  Musique musiqueActuelle;

  @override
  void initState() {
    super.initState();
    musiqueActuelle = maListeDeMusiques[1];
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
          children: <Widget>[
            new Card(
              elevation: 9.0,
              child: new Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: new Image.asset(musiqueActuelle.imagePath),
              ),
            ),
            texteMagique(musiqueActuelle.titre, 1.5),
            texteMagique(musiqueActuelle.artiste, 1.0),
            new Row(

            )
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                texteMagique('0:0', 0.8),
                texteMagique('0:22', 0.8)
              ],
            )
          ],
        ),
      ),
    );
  }

  Text texteMagique(String data, double scale) {
    return new Text(
      data,
      textScaleFactor: scale,
      textAlign: TextAlign.center,
      style: new TextStyle(
          color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
    );
  }
}
