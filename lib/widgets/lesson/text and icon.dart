import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CenterText extends StatelessWidget {
  const CenterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Text and center'
        ),
      ),
      body:const Center(
        child: Text(
          'Hello everyone',
          style: TextStyle(
            fontSize: 50,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 30.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            ]
          ),
        ),
      ),
    );
  }
}