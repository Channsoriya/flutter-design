import 'package:flutter/material.dart';
class gridviewWidget extends StatelessWidget {
  const gridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
        ),
      itemBuilder: (context, index) {
        if(index%2==0){
          return Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 30),
            ),
          );
        }else{
          return Container(
           color: Colors.blue,
           alignment: Alignment.center,
           child: Text(
              index.toString(),
              style: TextStyle(fontSize: 30),
            ),
          );
        }
      },
      )
      );
 
  }
}