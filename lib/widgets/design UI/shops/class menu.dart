
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/design%20UI/shops/menu%20card.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatelessWidget {
  const menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
      child: Row(
       children: List.generate(menucartd.listmenucard.length, (index) {
         var data=menucartd.listmenucard[index];
         return Column(
           children:  [
             CircleAvatar(
               radius: 50,
               backgroundColor: const Color.fromARGB(255, 170, 167, 167),
               child: CircleAvatar(
                 radius: 40,
                 backgroundColor:  Colors.white,
                 child: Container(
                   height: 40, 
                   width: 40,
                    decoration: BoxDecoration(
                    
                     image: DecorationImage(
                       image: AssetImage(data.image),
                       fit: BoxFit.cover
                     ),
                     borderRadius: BorderRadius.circular(35)
                    ),
                 ),
               ),
             ),
              Text(
               data.title,
                style: GoogleFonts.acme(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold
                ))
           ],
         );
       }),
      ),
    );
  }
}
