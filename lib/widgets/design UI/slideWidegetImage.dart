import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class slideWidegetimage extends StatelessWidget {
  const slideWidegetimage({
    Key? key,
    required this.slideimage,
  }) : super(key: key);

  final List<String> slideimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ImageSlideshow(
        height: 200, 
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          for(int i=0;i<slideimage.length;i++)
               Container(
                  decoration:  BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage(slideimage[i]),
                      fit: BoxFit.cover
                      ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )
                  ),
                  
               )
        ]
        ),
    );
  }
}

