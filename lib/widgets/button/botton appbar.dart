import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bottonappbar extends StatelessWidget {
  const bottonappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: Drawer(),
  //  bottomNavigationBar: BottomAppBar(
  //   color: Colors.amber,
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: [
  //       IconButton(
  //         icon: Icon(Icons.home),
  //         onPressed: () {
          
  //         },
  //       ) ,
  //       IconButton(
  //         icon: Icon(Icons.play_circle_outline),
  //         onPressed: () {
          
  //         },
  //       ) ,IconButton(
  //         icon: Icon(Icons.person),
  //         onPressed: () {
          
  //         },
  //       ) ,
  //       IconButton(
  //         icon: Icon(Icons.group),
  //         onPressed: () {
          
  //         },
  //       ) ,
  //       IconButton(
  //         icon: Icon(Icons.more_horiz),
  //         onPressed: () {
          
  //         },
  //       ) 
  //     ]
  //     ),
  //  ),

     bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.green,
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
          label: 'setting'
        ),
  
      ],
     ),
    );
  }
}