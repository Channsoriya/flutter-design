import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pagerviewWidget extends StatelessWidget {
  const pagerviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
        // scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          
        },
        children: [
          Container(
            height: 200, 
            width: double.infinity,
            color: Colors.red,
          ),
          Container(
            height: 200, 
            width: double.infinity,
            color: Color.fromARGB(255, 29, 101, 160),
          ),
          Container(
            height: 200, 
            width: double.infinity,
            color: Color.fromARGB(255, 43, 198, 11),
          ),
        ],
      ),
        ],
      )
    );
  }
}