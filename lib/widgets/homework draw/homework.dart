import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../image test/CardModel.dart';
class homework extends StatelessWidget {
  const homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.green,
       body: SingleChildScrollView(
       child: SafeArea(
         child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back
                ),
                SizedBox(
                 width: 130,
                ),
                Text(
                  'Transaksi',
                   style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 238, 235, 235)),
                   
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
                children: List.generate(
                  CardModel.listcard.length, (index){
                    var data=CardModel.listcard[index];
                    return Container(
                      height: 140, 
                      width: double.infinity, 
                      margin: EdgeInsets.only(left: 10,right: 10),
                      decoration:  BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)             
                      ),
                      padding: EdgeInsets.only(left: 25), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 98, 223, 100).withOpacity(0.2),
                              border: Border.all(
                                color: Colors.black
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(data.image)                              
                                )
                              ),
                            ),
                          ),               
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                data.title,
                                style: TextStyle(fontSize: 22),
                              ),
                              Text(
                                data.date,
                                 style: TextStyle(fontSize: 15),
                              ),
                             
                            ],
                          ),
                           Text(
                                '+\$ ${data.price}',
                                 style: TextStyle(fontSize: 25,color: Colors.amber),
                              )
                        ]
                        ),
                      );
                  }
                      ),
            )
          ],
         ),
       ),
     ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 25, 49, 201),
      selectedItemColor: Colors.red,
      unselectedItemColor: Color.fromARGB(255, 206, 184, 192),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_outline),
          label: 'Play'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'setting' ,
        ),
  
      ],
     ),
    );
  }
}