import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/widgets/design%20UI/chard%20body%20device.dart';
import 'package:flutter_design/widgets/design%20UI/design%20form%20sign%20in.dart';

class bodyDevices extends StatefulWidget {
   bodyDevices({super.key});
  
  @override
  State<bodyDevices> createState() => _bodyDevicesState();
}

class _bodyDevicesState extends State<bodyDevices> {
  List<String> imagelistmenu=[
   'All','Kitchen','Bedroom','Bathroom'
  ];
  int isselectmenu=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 198, 33),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 const Text(
                  'Body Devices',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
               const SizedBox(
               width: 80,
            ),
                 IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                       return formsignin(); 
                      },));
                  },
                   icon: const Icon(
                    Icons.menu, 
                    size: 30,
                   )
                   )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:List.generate(imagelistmenu.length, (index) {
                return InkWell(
                   onTap: () {
                     setState(() {
                       isselectmenu=index;
                     });
                   },
                   child: isselectmenu==index? Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10 ,
                      vertical: 5
                    ),
                    decoration:const BoxDecoration(
                      color: Color.fromARGB(255, 213, 219, 213),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15)
                      )
                   ),
                   child: Text(
                      imagelistmenu[index],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                   ),
                ): Text(
                      imagelistmenu[index],
                     style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                   ),
                );
              }
              )
            ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: GridView.builder(
              itemCount: bodyDeviceimage.listbodydevice.length,
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 18,
                    mainAxisExtent: 190
                    ),
                   itemBuilder: (context, index) {
                    var data=bodyDeviceimage.listbodydevice[index];
                     return Container(
                      decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(15.0),
                    child: Column(
                       children: [
                          Container(
                            alignment: Alignment.center,
                            height: 120,
                            width: 200,
                              decoration: BoxDecoration(
                                 borderRadius: const BorderRadius.all(
                                    Radius.circular(20)
                                  ),
                                  color: Colors.white,
                                   image: DecorationImage(
                                    image: AssetImage(data.image),
                                    fit: BoxFit.contain
                                    ),
                              ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            data.title,
                            style: const TextStyle(
                              fontSize: 20,
                               fontWeight: FontWeight.bold
                            ),
                          )
                       ],
                    ),
                  ),
                     );
                   },
                 ),
           ),
         ),
          ],
        ),
      ),
    );
  }
}