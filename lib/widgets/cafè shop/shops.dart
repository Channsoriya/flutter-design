import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class shopsproduce extends StatefulWidget {
  const shopsproduce({super.key});

  @override
  State<shopsproduce> createState() => _shopsproduceState();
}

class _shopsproduceState extends State<shopsproduce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
           children: [
            Container(
            height: double.infinity, 
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            ),
            Positioned(
              top: 10,
              right: 8, 
              left: 8,
              child: Container(
                padding:const EdgeInsets.all(20),
                    height: 300, 
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight:  Radius.circular(30)
                      ),
                      color: Color.fromARGB(255, 84, 53, 51)
                    ),
                    child: Column(
                     children: [
                      Row(
                        children: [ 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                            'Location',
                            style: GoogleFonts.alef(
                              fontSize: 20
                            ),
                          ),
                          Row(
                            children:const [
                               Text(
                                'Bilzen, Tanjungbalai'
                              ),
                               Icon(
                                Icons.expand_less
                              )
                            ],
                          )
                            ],
                          ),
                          const Spacer(),
                         const CircleAvatar(
                             backgroundImage: AssetImage('images/kun khmer2.jpg'),
                             radius: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search coffee',
                          prefixIcon:const Icon(Icons.search),
                          suffixIcon:const Icon(
                            Icons.checklist,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none
                            )
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 138, 113, 113),

                        ),
                      )
                     ],
                    ) 
                  ),
            ),
                Positioned(
                  top: 225,
                  right: 30,
                  left: 30,
                  child: Container(
                    height: 150, 
                    width: 300, 
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cafè Au lait.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  child: Row(
                    children:const [
                       Text('fsk')
                    ],
                  ),
                )
           ],
        ),
      ),
    );
  }
}