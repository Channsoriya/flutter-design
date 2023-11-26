import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sliveCustom extends StatelessWidget {
  const sliveCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading:const Icon(Icons.menu),
          title:const Text('test'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.greenAccent,
                  Colors.red,
                ]
              )
            ),
          ),
        ),
      ],
      
    ),
    
    );
  }
}