import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DesingHomePage extends StatefulWidget {
  const DesingHomePage({super.key});

  @override
  State<DesingHomePage> createState() => _DesingHomePageState();
}

class _DesingHomePageState extends State<DesingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 65, 222, 162),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (value) {
        
      },
     type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon:  const Icon(
            Icons.home,
          ),
          label: ''
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: ''
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: ''
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: ''
          )
      ]),
    );
  }
}
