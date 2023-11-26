import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class designStack extends StatelessWidget {
  const designStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading: Icon(Icons.menu),
      centerTitle: true, 
      title: Text('test'),
      actions: [
        Stack(
          alignment: Alignment.topRight,
          children: [
           Icon(
            Icons.shopping_cart,
            size: 40,
           ),
           CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
            child:  Text('3'),
           ),
          ],
        )
      ],
     ),
    );
  }
}