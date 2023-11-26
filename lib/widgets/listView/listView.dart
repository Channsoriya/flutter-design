import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for(int i=0;i<5;i++)
          Container(
            margin: EdgeInsets.all(10),
            height: 150, 
            width: double.infinity,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}