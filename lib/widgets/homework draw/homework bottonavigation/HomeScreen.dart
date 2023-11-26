import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/homework%20draw/homework%20bottonavigation/card%20row.dart';

class HomeScreentest extends StatefulWidget {
  const HomeScreentest({super.key});

  @override
  State<HomeScreentest> createState() => _HomeScreentestState();
}

class _HomeScreentestState extends State<HomeScreentest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 20, 20),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
               height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                         backgroundColor: Color.fromARGB(255, 39, 26, 26).withOpacity(0.9),
                         child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 39, 26, 26).withOpacity(0.9),
                           child: Icon(
                            Icons.grid_view
                           ),
                         ),
                    ),
                   SizedBox(
                     width: 90,
                    ),
                    CircleAvatar(
                    radius: 30,
                       backgroundColor: Color.fromARGB(255, 39, 26, 26).withOpacity(0.9),
                       child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 39, 26, 26).withOpacity(0.9),
                         child: Icon(
                          Icons.work
                         ),
                       ),   
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/kun khmer2.jpg')
                  ),
                  ],
                ),
              ),
              SizedBox(
               height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 15,
                          width: 20,
                          ),
                        Text(
                          'Total Balance',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: 'Cardo-Bold',
                            fontSize: 20
                            ),
                            )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 15,
                          width: 20,
                          ),
                        Text(
                          '\$34,750.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cardo-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                            ),
                            )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
               height: 15,
              ),
              Container(
              margin: EdgeInsets.all(10),
              height: 200, 
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 234, 42, 9),
                    Color.fromARGB(255, 26, 166, 217),
                  ]
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                     Container(
                      width: 50,  
                      height: 50,
                      decoration: BoxDecoration(
                        
                      ),
                     )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '1234 5678 9000',
                        style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'Cardo-Bold'),
                      )
                    ],
                  ),
                  Row(

                  )
                ],
              ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                child: Row(
                 children: List.generate(cardRow.cardrow.length, (index) {
                  var data=cardRow.cardrow[index];
                  return Column(
                    children: [
                       Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor:  Color.fromARGB(255, 21, 20, 20),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 74, 70, 56),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 74, 70, 56),
                            backgroundImage: AssetImage(data.image),
                          ),
                        ),
                      ),  
                  ),
                  Text(
                    data.title,
                    style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Cardo-Bold'),
                  )
                    ],
                  );
                 })
                ),
              ),
            Container(
             height: 50, 
                  width: double.infinity,
            ),
             Column(
              children: List.generate(cardRow.cardrow.length, (index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 120, 
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 74, 70, 56),
                   borderRadius: BorderRadius.all(
                    Radius.circular(20)
                   )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromARGB(255, 36, 35, 33),
                        child: CircleAvatar(
                          radius: 35,
                           backgroundImage: AssetImage('images/kun khmer1.jpg'),
                        ),
                      ),
                      Text(
                        'asdfds'
                      ),
                      SizedBox(
                       width: 50,
                      ),
                       Text(
                        '0000000000000000000000000000'
                      ),
                      
                    ],
                  ),
                );
              }),
             )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color:  Colors.white.withOpacity(0.7),
        
      //   onTap: (value) {
          
      //   },
      //   items: [
      //    Icon(Icons.home),
      //    Icon(Icons.search),
      //    Icon(Icons.menu),
      //   ]
      //   ),
    );
  }
}