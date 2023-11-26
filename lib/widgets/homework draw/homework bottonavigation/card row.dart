import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardRow {
  final String image;
  final String title;
   cardRow({
    required this.image,
    required this.title
   });
   static List<cardRow> cardrow=[
   cardRow(
    image: 'images/add.png',
    title: 'Add'
    ),
    cardRow(
    image: 'images/sand.png',
    title: 'Send'
    ),
    cardRow(
    image: 'images/received.png',
    title: 'Recive'
    ),
    cardRow(
    image: 'images/pay bill.png',
    title: 'pay Bill'
    ),
    cardRow(
    image: 'images/scan.png',
    title: 'Scan'
    ),
   ];
}