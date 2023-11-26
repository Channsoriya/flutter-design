import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menucartd {
  final image,title;
  menucartd({
    required this.image,
    required this.title
  });
  static List<menucartd> listmenucard=[
    menucartd(
      image: 'images/icons/loupe.png',
      title: 'search'),
    menucartd(
      image: 'images/icons/adidas.png',
      title: 'Adidas'),
    menucartd(
      image: 'images/icons/nike.png',
      title: 'Nike'),
    menucartd(
      image: 'images/icons/puma.png',
      title: 'Puma'),    
    menucartd(
      image: 'images/icons/puma.png',
      title: 'Puma'),     
  ];
}