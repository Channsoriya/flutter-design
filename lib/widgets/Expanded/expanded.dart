
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                     height: 300,
                     width: 100,
                     color: Colors.teal,
                  ),
                ),
                Expanded(
                  child: Container(
                   height: 300,
                   color: Colors.red,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                  children: [
                    Container(
                      height: 300,
                      color: Color.fromARGB(255, 120, 96, 94),
                    ),
                    Expanded(
                      child: Container(
                        height: 300,
                        color: Color.fromARGB(255, 38, 30, 179),
                      ),
                    ),
                  ],               
              ),
            ),
          ],
        ),
      ),
    );
  }
}