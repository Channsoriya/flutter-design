import 'package:flutter/material.dart';
class homework2 extends StatelessWidget {
  const homework2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [ 
            Column(
               children: [
                  Text(
                  'User setting',
                   style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FontMain',
                    color: Colors.black,
                    ),
                  ),
                  Container(
                  height: 200,
                  width: double.infinity, 
                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 209, 210, 250),
                  borderRadius: BorderRadius.all(
                  Radius.circular(10)
                  )
                  ),
                  child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                 width: 10,
                                ),
                                CircleAvatar(
                                  radius: 30, 
                                  backgroundImage: AssetImage('images/kun khmer2.jpg'),
                                ),
                                SizedBox(
                                 width: 20,
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chann soriya',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'FontMain',
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    Text(
                                      'Flutter Developer', 
                                      style: TextStyle(fontSize: 20),
                                      )
                                  ],
                                ),
                            
                              ],
                              
                            ),
                           Row( 
                            children:[
                              Column(
                                  children: [
                                    Text('gfdg'),
                                    Text('dsfgdf')
                                  ],
                                ),                         
                            ]
                           )
                        ],  
                        ),
                        ]
                 ),
                ),
                Row(
                children: [ 
                  Column(
                    children: [
                      Row(
                       children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 30,
                            child: CircleAvatar(
                              radius: 25, 
                              backgroundImage: AssetImage('images/kun khmer2.jpg'),
                            ),
                          ),
                        )
                       ],
                      ),
                      Text(
                        'Wellet',
                          style: TextStyle(fontSize: 20),
                      )
                    ],
                  ) 
                   ],  
                ),
                Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                       height: 100,
                       width: double.infinity, 
                       decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                       ),
                       child: Row(

                       ),
                    ),
                )
                ],   
              ), 
         ],
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 196, 203, 243),
      selectedItemColor: Colors.red,
      unselectedItemColor: Color.fromARGB(255, 92, 12, 232),
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