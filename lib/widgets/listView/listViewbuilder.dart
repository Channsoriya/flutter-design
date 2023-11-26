import 'package:flutter/material.dart';
class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
       if(index % 2==1){
           return Container(
          margin:const EdgeInsets.all(4),
          height: 100, 
          width: double.infinity, 
          color: Colors.amber,
        );
       }else if(index %3==0){
        return  Container(
          margin:const EdgeInsets.all(4),
          height: 100, 
          width: double.infinity, 
          color: Colors.black,
        );
       }
       else{
        return  Container(
          margin:const EdgeInsets.all(4),
          height: 100, 
          width: double.infinity, 
          color: Colors.red,
        );
       }
       
      },
      ),
    );
  }
}