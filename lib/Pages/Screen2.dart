import 'package:bmi/Pages/Calculation.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';



class Screen2 extends StatelessWidget {
  final String bmi;
  final String text;
  final String interp;
  Screen2(@required this.bmi,@required this.interp,@required this.text);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR"),),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.fromLTRB(10,15,0,15),
            child: Text("Your Result",

              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height*0.08,
                  color: Colors.white

              ),

            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(text,
                    style:TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height*0.05,
                    ),
                  ),
                  Text(bmi,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height*0.15,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                  Text(interp,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height*0.04,
                        fontWeight: FontWeight.w500

                    ),
                  ),




                ],
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: active_color,
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Container(
              color: bottomColor,
              child: Center(
                child: Text('RE-CALCULATE',
                  style:TextStyle(
                    fontSize: size.height*0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width: double.infinity,
              height:size.height*0.1,
            ),
          ),

        ],
      ),



    );
  }
}




