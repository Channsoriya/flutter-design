import 'package:flutter/material.dart';
class row_and_column extends StatelessWidget {
  const row_and_column({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
     appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 31, 57, 103),
      leading:Icon(Icons.menu),
      centerTitle: true,
      title: Text("Chann soriya",
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),
      ),     
      actions: [
        Icon(Icons.search),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.logout_outlined),
        SizedBox(
          width: 12,
        )
      ],
     ),
     body: Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: 300,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: 400, 
            color: Colors.green,
          ),
          ),
      ],
     )
    );
  }
}