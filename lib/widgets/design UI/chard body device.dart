import 'package:flutter/cupertino.dart';

class bodyDeviceimage{
   final String image,title;
   bodyDeviceimage({
    required this.image,
    required this.title
   });
   static List<bodyDeviceimage> listbodydevice=[
    bodyDeviceimage(
      image: 'images/bed.png',
       title: 'Bed'),
       bodyDeviceimage(
      image: 'images/rocking-chair.png',
       title: 'Swing Chari'),
       bodyDeviceimage(
      image: 'images/camera.png',
       title: 'Camera'),
       bodyDeviceimage(
      image: 'images/lamp.png',
       title: 'Lighting'),
       bodyDeviceimage(
      image: 'images/bath.png',
       title: 'Bath'),
       bodyDeviceimage(
      image: 'images/baby-bottle (1).png',
       title: 'Bottle')
   ];
}