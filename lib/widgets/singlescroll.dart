import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleScrollWidget extends StatelessWidget {
  const SingleScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(
          Icons.menu,
        ),
      ),
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.menu,
              size: 100,
            ),
             const Icon(
              Icons.menu,
              size: 100,
           
            ),
             const Icon(
              Icons.menu,
              size: 100,
            ),
             const Icon(
              Icons.menu,
              size: 100,
            ),
             const Icon(
              Icons.menu,
              size: 100,
            ), const Icon(
              Icons.menu,
              size: 100,
            ),
             const Icon(
              Icons.menu,
              size: 200,
            ), const Icon(
              Icons.menu,
              size: 100,
            ), const Icon(
              Icons.menu,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}