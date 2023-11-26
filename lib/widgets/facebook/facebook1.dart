import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/facebook/cardmodel.dart';

class facebookView extends StatelessWidget {
  const facebookView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Facebook',
        style: TextStyle(fontSize: 30, color: Colors.blue),
      ),
      actions: [
        
       Icon(
        Icons.search,
        color: Colors.black,
        size: 32,
       ),
       SizedBox(
        width: 10,
        ),
        Image.asset('images/messenger.png'),
        SizedBox(
        width: 10,
        ),
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(cardmodel.listimage.length, (index) {
                var data=cardmodel.listimage[index];
                return Container(
                  margin: EdgeInsets.only(left: 4,top: 10,bottom: 5,right: 5),
                  height: 200, 
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data.image),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),                 
                  ),
                 );
              }
              )
            ),
          ),
          Column(
           children: List.generate(cardmodel.listimage.length, (index) {
            var data=cardmodel.listimage[index];
            return Container(
              margin: const EdgeInsets.all(5),
              height: 200, 
              width: double.infinity,
              decoration: BoxDecoration(
               image: DecorationImage(
                      image: AssetImage(data.image),
                      fit: BoxFit.cover
                    ),
                )
              );
           })
           ),
        ], 
      ),
    ),
    );
  }
}