import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWideget extends StatelessWidget {
  const RatingWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      actions: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('test'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.greenAccent,
                    Colors.blue,
                  ]
                )
              ),
            ),
          ),
            ],
          ),
        )
      ],
     ),
     body: Center(
      child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
        Icons.star,
          color: Colors.amber,
        ),
         onRatingUpdate: (rating) {
          print(rating);
          },
        )
            
      )
    );
  }
}