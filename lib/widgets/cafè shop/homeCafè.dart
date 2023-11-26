import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/caf%C3%A8%20shop/shops.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCafe extends StatefulWidget {
  const HomeCafe({super.key});

  @override
  State<HomeCafe> createState() => _HomeCafeState();
}

class _HomeCafeState extends State<HomeCafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/cafè.jpg'),
              fit: BoxFit.cover
            )
          ),
          padding:const EdgeInsets.only(top: 100),
           child: Container(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  'Coffee so good, \nyour taste buds \nwill love it.',
                   style: GoogleFonts.acme(
                    fontSize: 50,
                    color: Colors.red
                   ),textAlign: TextAlign.center,
                ),
                Text(
                  'The best grain, the finest roast, the\n powerful flavor.',
                 style: GoogleFonts.aclonica(
                  color: Colors.white
                 ),textAlign: TextAlign.center,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) {
                            return const shopsproduce();
                          },));
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 140, 
                      vertical: 20
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 140, 211, 142),
                          Color.fromARGB(255, 8, 79, 137),
                        ]
                      )
                    ),
                    child:  Text(
                      'Get started',
                      style: GoogleFonts.archivo(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
           ),
        ),
      )
    );
  }
}