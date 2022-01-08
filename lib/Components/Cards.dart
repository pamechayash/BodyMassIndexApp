import "package:flutter/material.dart";

class IconContent extends StatelessWidget {
  final IconData icon;
  final String s;

  IconContent(this.icon, this.s);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: size.height*0.13,
        ),
        SizedBox(
          height: size.height*0.007,
        ),
        Text(
          s,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: size.height*0.0,
          ),
        ),
      ],
    );
  }
}

class Cards extends StatelessWidget {
  final dynamic cardColor;
  final dynamic cardChild;
  final dynamic whenPressed;

  Cards({@required this.cardColor, this.cardChild,this.whenPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 3.0,
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
      ),
    );
  }
}
