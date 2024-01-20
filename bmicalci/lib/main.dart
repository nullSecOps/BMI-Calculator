import 'package:bmicalci/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: HomeScreen(),
    );
  }
}
