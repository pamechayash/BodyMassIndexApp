import 'dart:math';

import 'package:flutter/material.dart';
class Calculation {
  final int _h;
  final double _w;
  double _bmi=0;
  Calculation( this._h, this._w);

 String getResultBmi(){

   _bmi=_w/pow((_h/100), 2);
   return _bmi.toStringAsFixed(1);

 }
 String getResultText() {
   if (_bmi >=25) {
     return "OVERWEIGHT";
   }
   else if (_bmi> 18.5)
     { return "NORMAL";
     }
   else
     return "UNDERWEIGHT";
   }


 String getInterp() {
  if (_bmi >=25)
    return "You have a higher than the normal body weight. Try to exercise more!!";
  else if (_bmi> 18.5)
   return "You have a normal body weight Goodjob!!";
  else
    return "You have normal body weight. You can eat a bit More!!";
}



}