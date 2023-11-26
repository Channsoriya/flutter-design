import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/gradient%20colors/appbar%20Gradient.dart';
import 'package:flutter_design/widgets/lesson/Row.dart';
import 'package:flutter_design/widgets/lesson/icons.dart';
import 'package:flutter_design/widgets/lesson/text%20and%20icon.dart';
import 'package:flutter_design/widgets/text/textformfield.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  textformfield()
    );
  }
}
