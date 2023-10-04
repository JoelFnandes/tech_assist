import 'package:flutter/material.dart';
import 'package:tech_assist/widgets/cardWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String local = "Reitoria - Setor Financeiro";
  String hora = "14:12";
  String usuario = "André";
  String detalhes = "Computador não inicia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TechAssist"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(10, 30, 61, 100),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person_2_outlined,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centraliza horizontalmente
          children: <Widget>[
            CardWidget(
              local: this.local,
              hora: this.hora,
              usuario: this.usuario,
              detalhes: this.detalhes,
            ),
            // Outros widgets podem ser adicionados abaixo do CardWidget
          ],
        ),
      ),
    );
  }
}
