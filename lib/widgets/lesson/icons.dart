import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CenterIcon extends StatelessWidget {
  const CenterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Icon and center'
        ),
      ),
      body: Center(
        child: Icon(
          Icons.home,
          size: MediaQuery.of(context).size.height*0.4,
          shadows:const [
           Shadow(
            offset: Offset(5, 5),
            color: Colors.red
           )
          ],
        )
      
      ),
    );
  }
}