import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0; // para cambiarle el tamaño a todos
    final TextStyle textStyle = new TextStyle(fontSize: 25.0);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TÓTEC"),
      ),
      body: new Container(
          child: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new MyCard(
                title: new Text("Agricultores", style: textStyle),
                icon: new Icon(
                  Icons.agriculture,
                  color: Colors.green,
                  size: iconSize,
                )),
            new MyCard(
                title: new Text("Compradores", style: textStyle),
                icon: new Icon(
                  Icons.business,
                  color: Colors.blueAccent,
                  size: iconSize,
                )),
            new MyCard(
                title: new Text("Transportistas", style: textStyle),
                icon: new Icon(
                  Icons.delivery_dining,
                  color: Colors.redAccent,
                  size: iconSize,
                )),
            new MyCard(
                title: new Text("Consumidores", style: textStyle),
                icon: new Icon(
                  Icons.emoji_people,
                  color: Colors.amber,
                  size: iconSize,
                )),
          ],
        ),
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title; //dos parámetros
  final Widget icon;

  MyCard({this.title, this.icon}); //aqui los esta agarrando

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: new Card(
            child: new Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [this.title, this.icon],
                ))));
  }
}
