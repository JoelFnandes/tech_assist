import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String local;
  final String hora;
  final String usuario;
  final String detalhes;

  CardWidget(
      {required this.local,
      required this.hora,
      required this.usuario,
      required this.detalhes});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120, // Define a altura desejada para o Card
        width: 360, // Define a largura desejada para o Card
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(children: <Widget>[
            ListTile(
              title: Text(
                widget.local,
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Conteúdo do Card aqui.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ]),
        ));
  }
}
