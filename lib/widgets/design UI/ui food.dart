import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/design%20UI/cardfood.dart';
import 'package:flutter_design/widgets/design%20UI/slideWidegetImage.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-item.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

import 'appbarWideget.dart';
class foodui extends StatefulWidget {
  const foodui({super.key});

  @override
  State<foodui> createState() => _fooduiState();
}

class _fooduiState extends State<foodui> {
  int curren=0;
  List<String> uifoodtext=[
   'All','Breakfast','Lunch','Dinner','Chicken','Fish'
  ];
 List<String> slideimage=[
    'images/Steamed pork.jpg', 
    'images/Steamed rice with Pork..jpg', 
 ];
  int CurrenIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             const appbarWideget(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(uifoodtext.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          CurrenIndex=index;
                        });
                      },
                      child:Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20, 
                          vertical: 10
                        ),
                        decoration: BoxDecoration(
                          color: CurrenIndex==index ? const Color.fromARGB(255, 234, 97, 161) : Colors.white,
                          borderRadius: CurrenIndex==index?BorderRadius.circular(20):BorderRadius.circular(20),
                          border: CurrenIndex==index ? Border.all(
                            width: 0,
                            color: Colors.grey
                          ) : Border.all(
                            width: 1,
                            color: Colors.grey
                          )
                        ),
                          child: CurrenIndex==index? Text(
                            uifoodtext[index], 
                            style: const TextStyle(
                              color: Colors.white,   
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ):Text(
                            uifoodtext[index], 
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      );
                  },)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recipes of the week',
                      style: GoogleFonts.acme(
                        textStyle:const TextStyle(
                          fontSize: 25
                        )
                      )
                    ),
                    const Icon(
                      Icons.receipt,
                      size: 40,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(cardfood.listcardfood.length, (index) {
                    var data=cardfood.listcardfood[index];
                    return Container(
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.all(9),
                      height: 240, 
                      width: 185, 
                      color: const Color.fromARGB(255, 243, 242, 239),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              data.image
                            ),
                            radius: 75,
                          ),
                          Expanded(
                            child: Container(
                              padding:const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                  data.title,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                    ),
                                    RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 15,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          
                                        },
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                              data.imagename
                                            ),
                                            radius: 20,
                                          ),
                                          Text(
                                            data.name
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.heart_broken_rounded,
                                            color: Colors.red,
                                          )
                                      
                                        ],
                                      ),
                                    )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      Text(
                        'Recommented',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(
                        Icons.receipt,
                        size: 40,
                      )
                  ],
                ),
              ),
              slideWidegetimage(slideimage: slideimage)
            ],
          ),
        ),
      ),

    );
  }
}

