import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/Navigator/sceen2.dart';

class sceen1 extends StatelessWidget {
  const sceen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) {
                return const sceen2();
              },
              )
            );
        },
        child:const Text(
          'sceen1'
        ),
      ),
     ),
    );
  }
}