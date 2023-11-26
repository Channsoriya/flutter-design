import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/design%20UI/shops/class%20menu.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menudiscount.dart';
class homeshops extends StatefulWidget {
  const homeshops({Key? key}) : super(key: key);

  @override
  State<homeshops> createState() => _homeshopsState();
}

class _homeshopsState extends State<homeshops> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 170, 167, 167),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
              child: Row(
                children: [
                  Text(
                    'GCOMMERC',
                     style: GoogleFonts.acme(
                      fontSize: 30,
                     )
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.menu,
                    size: 40,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
              padding: const EdgeInsets.only(right: 5,left: 5),
              height: 70, 
              width: double.infinity,
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(40)
              )
              ),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 237, 56, 74),
                        radius: 30,
                        child: Icon(
                          Icons.circle,
                        ),
                      ),
                      const SizedBox(
                         width: 10,
                      ),
                      Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text(
                            'Send To:'
                          ),
                           Text(
                            'Bekasi, Indonesia',
                            style: GoogleFonts.acme(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 56, 74),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40)
                    )     
                    ),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 15
                        ),
                        child: Text(
                          'Change',
                          style: GoogleFonts.acme(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
           const menu(),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
              height: 150, 
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                ),
                image: DecorationImage(
                  image: AssetImage('images/clothes/nike6.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: menudiscound(),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
              children: [
                 Text(
                  'Most Popular',
                  style: GoogleFonts.acme(
                     fontSize: 30
                  )
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Text(
                    'View More',
                    style: GoogleFonts.acme(
                     fontSize: 20,
                     color: Colors.amber,
                  )
                  ),
                )
              ],
             ),
           ),
          Expanded(
            child: Stack(
              children: [GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                mainAxisSpacing: 16
                ),
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: Container(
                   height: 900,
                   width: 150,
                   color: Colors.red,
                  ),
                );
                 },),
              ]
            ),
          )
          ],
        ),
      ),
    );
  }
}

