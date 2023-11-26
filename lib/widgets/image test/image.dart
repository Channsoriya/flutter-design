import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class image extends StatelessWidget {
  const image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: Drawer(),
     appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Text("Kun khmer"),
      actions: [
       Icon(Icons.search),
       SizedBox(width: 20,
       ),
       Icon(Icons.login_outlined),
       SizedBox(
        width: 20,
       )
      ],
     ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            child: Image.asset("images/kun khmer1.jpg"),        
          ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: Image.asset("images/kun khmer2.jpg"),        
        ),
          
        Container(
           margin: const EdgeInsets.only(top: 4),
          child: Image.asset("images/kun khmer3.jpg"),  
        ),
        Container (
         margin: const EdgeInsets.only(top: 4),
          child: Image.asset("images/kun khmer4.jpg"),  
        ),
        ],
      ),
    ),
    );
  }
}