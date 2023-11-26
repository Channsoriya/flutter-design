import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title:Text('Chann soriya'),
        actions:const [
          Icon(Icons.search),
          SizedBox(
           width: 20,
          ) ,
          Icon(Icons.logout_outlined),
          SizedBox(
            width: 20,
          ) ,
        ],
      ),
      body: const Center(
        child: Text(
          'Hello crush',
          textAlign: TextAlign.justify,
          style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          //backgroundcolor: color,clack  
          // decoration: TextDecoration.lineThrough,
          // decorationColor: Colors.black,
          shadows: [
            Shadow(
              offset: Offset(2, -2),
              blurRadius: 10,
              color: Color.fromARGB(255, 28, 180, 53)
            ),
            Shadow(
              offset: Offset(2, -2),
              blurRadius: 10,
              color: Color.fromARGB(255, 12, 46, 17)
            )
          ]
          ),
        ),      
      ),

      //row

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: const[
      //     Text('hello',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 52, 188, 11)),),
      //     Text('hello crush',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 52, 188, 11)),)
      //   ],
      // ),

      //column
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children:const [
      //        Text('hello',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 52, 188, 11)),),
      //        Text('hello crush',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 52, 188, 11)),) 
      // ]),

      
    );
  }
}