
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/design%20UI/shops/homeshops.dart';
import 'package:flutter_design/widgets/design%20UI/shops/sing%20up.dart';
import 'package:google_fonts/google_fonts.dart';

class mainshops extends StatelessWidget {
  const mainshops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/clothes2.jpg'),
              fit: BoxFit.cover
            )
          ),
          padding:const EdgeInsets.only(top: 400),
           child: Container(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'Change Your\nPerspective in style',
                   style: GoogleFonts.tangerine(
                    fontSize: 80,
                    color: const Color.fromARGB(255, 5, 239, 5),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      const Shadow(
                        blurRadius: 10,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 7, 76, 250),
                      )
                    ]
                   ),textAlign: TextAlign.center,
                ),
                Text(
                  'Change The Quality Of Your Appearance\n\nwith GCOMMERC Now!',
                 style: GoogleFonts.tangerine(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                      const Shadow( 
                        blurRadius: 10,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 7, 76, 250),
                      )
                    ]
                 ),textAlign: TextAlign.center,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) {
                        return const homeshops();
                      },));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100, 
                      vertical: 20
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 242, 8, 90),
                          Color.fromARGB(255, 8, 79, 137),
                        ]
                      )
                    ),
                    child:  Text(
                      'Sing Up With Email',
                      style: GoogleFonts.amaranth(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
           ),
        ),
      )
    );
  }
}