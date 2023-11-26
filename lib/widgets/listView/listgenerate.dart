import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listgenerate extends StatelessWidget {
  const listgenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
        children:List.generate(3, (index) {
         return Container(
          margin: EdgeInsets.all(10),
             height: 150, 
             width: double.infinity, 
             color: Colors.amber,
         );
        }
        ),
     ),
    );
  }
}