import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class InputDataScreen extends StatelessWidget {
  const InputDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title:const Text(
        'flutter input'
      ),
     ),
     body: Column(
      children:const [
         SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder()
          ),
          keyboardType: TextInputType.emailAddress,  
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration:  InputDecoration(
            hintText: 'Username', 
            labelText: 'Username',
            border: InputBorder.none,
            fillColor: Colors.black12,
            filled: true
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: 'password',
            labelText: 'password',
            border: UnderlineInputBorder()
          ),
          obscureText: true,
        )
      ],
     ),
    );
  }
}