import "package:flutter/material.dart";
import '../Components/Cards.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'Constants.dart';
import 'Calculation.dart';
import 'Screen2.dart';


enum Gender {
  MALE,
  FEMALE,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Color malec = inactive_color;
  Color femalec = inactive_color;
  int height = 150;
  double weight=60;
  double age=40;


  @override
  Widget build(BuildContext context) {
    Gender gender;
    Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body:
     Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Cards(
                      whenPressed: () {
                        setState(() {
                          malec = malec == inactive_color
                              ? malec = active_color
                              : malec = inactive_color;
                          femalec = inactive_color;
                        });
                      },
                      cardColor: malec,
                      cardChild:
                          IconContent( FontAwesomeIcons.mars,  "MALE"),
                    ),
                  ),
                  Expanded(
                    child: Cards(
                      whenPressed: () {
                        setState(() {
                          femalec = femalec == inactive_color
                              ? femalec = active_color
                              : femalec = inactive_color;
                          malec = inactive_color;
                        });
                      },
                      cardColor: femalec,
                      cardChild:
                          IconContent( FontAwesomeIcons.venus, "FEMALE"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Cards(
                cardColor: inactive_color,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: Tstyle(size),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: Btstyle(size)
                        ),
                        Text("cm", style: Tstyle(size)),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor:  Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: size.height*0.025,
                         pressedElevation: 10.0
                        ),
                        overlayColor:  Color(0xFFEB1555).withOpacity(0.16),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 0.0,
                        max: 300.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },

                        inactiveColor: Color(0xFF8D8E98),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Cards(
                      cardColor: inactive_color,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("WEIGHT",
                          style: Tstyle(size),
                          ),

                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(weight.toString(),style:Btstyle(size)),
                              Text("kg",
                                  style: Tstyle(size)
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                      child: Icon(Icons.remove,
                                ),
                                backgroundColor: Color(0xFF1E1D33),
                                  ),

                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                                child: Icon(Icons.add,
                                ),

                                backgroundColor: Color(0xFF1E1D33),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Cards(
                      cardColor: inactive_color,
                      cardChild:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE",
                            style: Tstyle(size),
                          ),

                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(age.toString(),style:Btstyle(size)),
                              Text("yrs",
                                  style: Tstyle(size)
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                child: Icon(Icons.remove,
                                ),
                                backgroundColor: Color(0xFF1E1D33),
                              ),

                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                child: Icon(Icons.add,
                                ),
                                backgroundColor: Color(0xFF1E1D33),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: (){
                Calculation calc=Calculation(height,weight);
               Navigator.push(context,
               MaterialPageRoute(builder:(context)=>Screen2(
                 calc.getResultBmi(),calc.getInterp(),calc.getResultText()

               ))
               );



              },
              child: Container(
                color: bottomColor,
                width: double.infinity,
                height: size.height*0.1,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  "CALCULATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.height*0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }
}


