import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/homework%20draw/shop%20online.dart';
class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.teal,
      leading: Icon(Icons.menu),
      centerTitle: true,
      title: Text(
        'Online shop',
        style: TextStyle(fontSize: 30,
        fontFamily: 'FontMain',
        fontWeight: FontWeight.bold),
      ),
      actions: [
        Icon(Icons.shopping_cart,),
        SizedBox(
          width: 10,
        )
      ],
     ),
     body: SingleChildScrollView(
       child: Column(
        children: List.generate(onlineshop.listonlineshop.length, (index){
          var data= onlineshop.listonlineshop[index];
          return Container(
            margin: EdgeInsets.all(5),
            height:160, 
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Row(
              children: [
                Container(
                  height: 160, 
                  width: 130 , 
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data.image),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              Padding(padding: EdgeInsets.all(10)),
               Expanded(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                    height: 10,
                    ),
                    Text(
                      data.title1,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                    height: 10,
                    ),
                    Text(
                      data.title2,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                    height: 10,
                    ),
                    Text(
                      data.title3,
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 248, 238, 42)
                      ),
                    ),
                  ],
                 ),
               )
              ],
            ),
          );
        })
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