import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/botton%20navigation/Menu%20screen.dart';
import 'package:flutter_design/widgets/botton%20navigation/Notification%20screen.dart';
import 'package:flutter_design/widgets/botton%20navigation/homeScreen.dart';
import 'package:flutter_design/widgets/botton%20navigation/search%20screen.dart';

class homeWidget extends StatefulWidget {
   homeWidget({super.key});

  @override
  State<homeWidget> createState() => _homeWidgetState();
}

class _homeWidgetState extends State<homeWidget> {
int setselectIndex=0;
 List<Widget> listwidget=const[
  homeScreen(),
  searchScreen(),
  notificationScreen(),
  MenuScreen()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),
    body: listwidget[setselectIndex],
    bottomNavigationBar: BottomNavigationBar(
      onTap: (value) {
        setState(() {
          setselectIndex=value;
        });
      },
      selectedItemColor: Colors.blue,
      currentIndex: setselectIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(  
          icon: Icon(Icons.home) ,
          label: 'Home'
          ),
          BottomNavigationBarItem(  
          icon: Icon(Icons.search) ,
          label: 'Search'
          ),
          BottomNavigationBarItem(  
          icon: Icon(Icons.notifications_active) ,
          label: 'Notification'
          ),
          BottomNavigationBarItem(  
          icon: Icon(Icons.menu) ,
          label: 'Menu'
          ),
      ],)
    );
  }
}