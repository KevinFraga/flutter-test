import 'package:flutter/material.dart';
import 'package:teste/teste_full_widget.dart';

class TesteWidget extends StatelessWidget {
  const TesteWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TesteFullWidget(title: title),
    );
  }
}
