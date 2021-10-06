import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Solid Software'),
        ),
        body: ChangeWidgetState(),
      ),
    );
  }
}

class ChangeWidgetState extends StatefulWidget {

  @override
  _ChangeWidgetState createState() => _ChangeWidgetState();
}

class _ChangeWidgetState extends State<ChangeWidgetState> {
  int r = 0;
  int g = 0;
  int b = 0;
  double opacity = 0.0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
           r=random.nextInt(255);
           g=random.nextInt(255);
           b=random.nextInt(255);
           opacity=random.nextDouble();
        });
      },
      child: Container(
        color: Color.fromRGBO(r, g, b, opacity),

        child: const Center(
          child: Text('Hey there', style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
