import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(offset: Offset(1.5, 1.5))],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            'Contador: $counter',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              shadows: [Shadow(color: Colors.white, offset: Offset(1, 1))],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.black,
        ),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
