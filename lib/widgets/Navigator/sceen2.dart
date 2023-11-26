import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/Navigator/sceen1.dart';

class sceen2 extends StatelessWidget {
  const sceen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      //delete <- in appbar
      automaticallyImplyLeading: false,
     ),
     body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, 
             MaterialPageRoute(
              builder: (context) {
                return sceen1();
              },)
          );
        },
        child: Text(
          'sceen2'
        ),
      ),
     ),
    );
  }
}