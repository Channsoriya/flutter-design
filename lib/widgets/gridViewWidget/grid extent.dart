import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GrideExtent extends StatelessWidget {
  const GrideExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 400,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.3,
        children: [
          Container(
            color: Colors.red, 
          ),
          Container(
            color: Colors.red, 
          ),
          Container(
            color: Colors.red, 
          ),
          Container(
            color: Colors.red, 
          )
        ],
        ),
      );
  }
}