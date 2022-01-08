import "package:flutter/material.dart";
import 'HomePage.dart';
import 'Screen2.dart';


 void main() {
  runApp(BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Calculate BMI",
      theme: ThemeData(
        primaryColor: Color(0xFF0a0e21),
        scaffoldBackgroundColor: Color(0xFF0a0e21).withOpacity(0.9),
      ),
      home: HomePage(),


    );
  }
}
