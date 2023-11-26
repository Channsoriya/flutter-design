import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class image_container extends StatelessWidget {
   image_container({super.key});
   List<String> listimage=[
    'images/kun khmer1.jpg',
    'images/kun khmer2.jpg',
    'images/kun khmer3.jpg',
    'images/kun khmer4.jpg',
  ];  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 56, 37),
        leading: const Icon(Icons.menu),
        title: Text(
          'Kun khmer'
        ),
        actions: [  
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.login_outlined),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int i=0;i<listimage.length;i++)
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
               color: Color.fromARGB(255, 31, 114, 159),
                  image: DecorationImage(
                  image: AssetImage(listimage[i]) ,
                  fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20) , 
                  bottomLeft: Radius.circular(20)
               )
              ),
            )
          ],
        ),
      )
    );
  }
}