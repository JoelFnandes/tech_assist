import 'package:flutter/material.dart';
import 'package:tech_assist/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(highlightColor: const Color.fromRGBO(10, 30, 61, 100)),
  ));
}
