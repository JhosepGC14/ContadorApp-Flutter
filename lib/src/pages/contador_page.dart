import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//ejemplo de un StatefulWidget
class ContadorPage extends StatefulWidget {
  //el createState necesita retornar una instancia de contador
  @override
  createState() => _ContadorPageState();
}

// se pone el guion abajo delante de la clase  "_ContadorPageState"
// para indicar que esta es privada y solo se va a leer dentro de
// este archivo.
class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 30);
  int _conteo = 0;

//funcion para sumar el contador
  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

//funcion para restar el contador
  void _disminuir() {
    if (_conteo > 0) {
      setState(() {
        _conteo--;
      });
    } else {
      return null;
    }
  }

//funcion para sumar el contador
  void _resetear() {
    setState(() {
      _conteo = 0;
    });
  }

  //funcion para cerrar la app en Android
  void _close() {
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StateFul"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Número de Tabs:",
                style: _styleText,
              ),
              Text(
                "$_conteo",
                style: _styleText,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _close,
              child: Icon(Icons.close),
            ),
          ],
        ),
        Expanded(
          child: SizedBox(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _resetear,
              child: Icon(Icons.exposure_zero_outlined),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _disminuir,
                  child: Icon(Icons.remove_circle_outline),
                ),
                SizedBox(
                  width: 20.0,
                  height: 70.0,
                ),
                FloatingActionButton(
                  onPressed: _agregar,
                  child: Icon(Icons.add_circle_outline),
                ),
              ],
            )
          ],
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
