import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawchat extends StatelessWidget {
   drawchat({super.key}); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 183, 169),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Color.fromARGB(255, 188, 183, 169),
          child: ListView(
              children: [
                Column( 
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60, 
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red, 
                               image: DecorationImage(
                                image: AssetImage('images/kun khmer1.jpg'),
                                fit: BoxFit.cover,
                               )                           
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                            'Chann soriya',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.play_arrow),
                            ],
                          ),  
                            const Icon(Icons.settings)
                      ],
                      
                    ),  
                    SizedBox(
                       height: 20,
                    ) , 
                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 25,
                        ),
                        Container(
                           height: 60, 
                           width: 60, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 157, 151, 135)
                           ),
                           child: Container(
                            height: 50, 
                           width: 50, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(  
                              image: AssetImage('images/chat.png')
                            )
                           ),
                           )
                        ),
                        SizedBox(
                            width: 25,
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                          )
                      ],
                    ),
                     SizedBox(
                       height: 20,
                    ) , 
                     Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 25,
                        ),
                        Container(
                           height: 60, 
                           width: 60, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 157, 151, 135)
                           ),
                           child: Container(
                            height: 50, 
                           width: 50, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(  
                              image: AssetImage('images/icons8-online-shop-48.png')
                            )
                           ),
                           )
                        ),
                        SizedBox(
                            width: 25,
                        ),
                        Text(
                          'Marketplace',
                          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                          )
                      ],
                    ),
                         SizedBox(
                       height: 20,
                    ) ,
                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 25,
                        ),
                        Container(
                           height: 60, 
                           width: 60, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 157, 151, 135)
                           ),
                           child: Container(
                            height: 50, 
                           width: 50, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(  
                              image: AssetImage('images/message requests.png')
                            )
                           ),
                           )
                        ),
                        SizedBox(
                            width: 25,
                        ),
                        Text(
                          'Message reqests',
                          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                          )
                      ],
                    ),
                             SizedBox(
                       height: 20,
                    ) ,
                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 25,
                        ),
                        Container(
                           height: 60, 
                           width: 60, 
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 157, 151, 135)
                           ),
                           child: Container(
                            height: 50, 
                            width: 50, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(  
                              image: AssetImage('images/archive.png')
                            )
                           ),
                           )
                        ),
                        SizedBox(
                            width: 25,
                        ),
                        Text(
                          'Archive',
                          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                          )
                      ],
                    )
                  ],
                )
              ],
           ),
        )
      ),
    );
  }
}