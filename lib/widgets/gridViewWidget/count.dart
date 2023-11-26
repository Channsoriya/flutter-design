import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridviewcount extends StatelessWidget {
  const gridviewcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
       crossAxisCount: 2,
       mainAxisSpacing: 2,
       crossAxisSpacing: 4,
       childAspectRatio: 0.4,
       children: List.generate(4, (index) {
        return Container(
          margin: EdgeInsets.all(10),
          color: Colors.red,
        );
       }),
        ),
    );
  }
}