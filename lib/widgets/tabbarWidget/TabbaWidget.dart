import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbarWidget extends StatelessWidget {
  const appbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        bottom:const TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
              ),
             text: 'Home',
            ) ,
            Tab(
              icon: Icon(
                Icons.tv,
              ),
             text: 'Video',
            ) ,
            Tab(
              icon: Icon(
                Icons.notifications_active,
              ),
             text: 'Notification',
            ) ,
            Tab(
              icon: Icon(
                Icons.menu,
              ),
             text: 'Menu',
            ) 
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 200, 
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/berutiful.jpg')
                  )
              ),
            ),
             GridView.builder(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
                ),
               itemBuilder: (context, index) {
                 return Container(
                  height: 200, 
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 192, 87)
              ),
                 );
               },
             ),
             Container(
              height: 200, 
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 141, 21, 12)
              ),
            ),
             Container(
              height: 200, 
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 21, 192, 87)
              ),
            )
          ],
        ),
      ),
    );
  }
}