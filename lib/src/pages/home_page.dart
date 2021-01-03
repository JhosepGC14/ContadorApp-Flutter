import 'package:flutter/material.dart';

//ejemplo de un statelessWidget
class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 30);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Número de Tabs:",
              style: styleText,
            ),
            Text(
              "$conteo",
              style: styleText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hola Mundoooo!");
        },
        child: Icon(Icons.add_circle_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
