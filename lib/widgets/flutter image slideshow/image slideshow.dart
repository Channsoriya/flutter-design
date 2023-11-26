import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class imageslideshow extends StatelessWidget {
   imageslideshow({super.key});
   List<String> imagelist=[
    'images/kun khmer1.jpg',
    'images/kun khmer2.jpg',
    'images/kun khmer3.jpg',
    'images/kun khmer4.jpg',
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: Text(
          'slideshow'
        ),
      ),
      body: ImageSlideshow(
        autoPlayInterval: 1000,
        isLoop: true,
        children: [
          for(int i=0;i<imagelist.length;i++)
          Container(
             height: 100,
             width: double.infinity,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagelist[i]),
                fit: BoxFit.cover
                )
             ),
          )
        ]
      ));
  }
}