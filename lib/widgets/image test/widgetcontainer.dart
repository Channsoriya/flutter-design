import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class widgetcontainer extends StatelessWidget {
  const widgetcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

     ),
     body: SingleChildScrollView(
       child: Column(
        children: [
          Container(
            // margin: const EdgeInsets.only(top: 5,bottom: 2,left: 1,right: 5),
            // margin:  const EdgeInsets.all(10),
            //horizontal អោយតម្លែ​ right lift
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            // margin: const EdgeInsets.symmetric(vertical: 10),
             margin: const EdgeInsets.only(top: 6,bottom: 6),
             height: 300,
             width: double.infinity,
             color: Color.fromARGB(255, 68, 67, 65),

          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            width: double.infinity, 
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(10,10),
                  blurRadius: 10
                )
              ]
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [
                   0.7,
                   0.5,
                   0.6
                ],
                colors: [
                  Colors.red,
                  Colors.green,
                  Colors.black
                ])
            ),
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            width: double.infinity,    
            child: const Text(
              'test flutter',
              style: TextStyle(fontSize: 22,),
            ),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20)
              )
            ),
          ),
        ],
       ),
     ),
    );
  }
}