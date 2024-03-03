import 'package:flutter/material.dart';

void main() {
  runApp(const TesteWidget(
    title: 'Flutter Teste',
  ));
}

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

class TesteFullWidget extends StatefulWidget {
  const TesteFullWidget({super.key, required this.title});

  final String title;

  @override
  State<TesteFullWidget> createState() {
    return TesteFullWidgetState(title: title);
  }
}

class TesteFullWidgetState extends State<TesteFullWidget> {
  TesteFullWidgetState({required this.title});

  final String title;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('$title - Counter: $counter'),
          onTap: () {
            setState(() {
              counter++;
            });
            print('click: $counter');
          },
        ),
      ),
    );
  }
}
