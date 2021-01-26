import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Nombre completo', 'Correo electrónico'];
  void onPressButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 1 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("TÓTEC"),
          backgroundColor: Colors.green,
        ), //para crear una barra superior
        body: new Container(
          child: new Center(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(flutterText, style: new TextStyle(fontSize: 25.0)),
              new Padding(padding: new EdgeInsets.all(5.0)),
              new RaisedButton(
                  child: new Text("Registrarme",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: onPressButton)
            ],
          )),
        ));
  }
}
