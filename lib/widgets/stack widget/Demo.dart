import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class stackwidget extends StatelessWidget {
  const stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('chann soriya'
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        //if you use alignment all widget in stacke ប្រែប្រួល
        children: [
          Container(
            height: 300, 
            width: 300, 
            color: Colors.red,
          ),
          Container(
            height: 200, 
            width: 200, 
            color: Color.fromARGB(255, 180, 138, 134),
          ),
          //using widget positioned to give a widget ប្រែប្រួល
           Positioned(
            top: 20, 
            right: 10,
             child: Container(
              height: 100, 
              width: 100, 
              color: Color.fromARGB(255, 43, 39, 227),
                     ),
           )
        ],
        ),
    );
  }
}