import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class testTextfield extends StatelessWidget {
   testTextfield({super.key});
TextEditingController usernamecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

     ),
     body: Column(
      children: [
        Padding(
          padding:const EdgeInsets.all(8.0),
          child: TextField(
            controller: usernamecontroller,
            decoration:const InputDecoration(
              label: Text('Username'),
              border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.emailAddress,  
          ),
        ),
       const TextField(
          decoration:const InputDecoration(
            hintText: 'password',
            border: OutlineInputBorder()
          ),
          obscureText: true,
        )
      ],
     ),
    );
  }
}