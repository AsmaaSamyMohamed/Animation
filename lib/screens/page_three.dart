
import 'package:flutter/material.dart';

import 'animation.dart';
class PageThree extends StatefulWidget {
  PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  double Height =100;
  double Widht=200;
  Color myColor =Colors.red;
  bool showFirst =true;
  Color textcolor=Colors.black;
  double fs=20;
  double opacity=.1;
  double padd=5;
  double ev=20;
  double r=0;
  double l=0;

  double lf1=10;
  double ri1=10;
  double t=10;
  BoxShape sha=BoxShape.rectangle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 500, width: 200,
                ),
                AnimatedPositioned(
                  top:t ,
                  left: lf1,
                  duration: Duration(seconds: 2),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    height: Height,
                    width: 100  ,
                    color: myColor,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 3),
                      padding: EdgeInsets.only(top: padd),
                      child: Container(
                        color: Colors.black12,
                        child: Column(children: [
                          AnimatedDefaultTextStyle(
                              child: Text("PHP"),
                              style: TextStyle(fontSize: fs ,color: textcolor),
                              duration: Duration(seconds: 2))
                        ],),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),
             Row(
               children: [
                 Center(
                   child: RaisedButton(onPressed: (){
                     setState(() {
                       Height =400;
                       Widht=400;
                       myColor=Colors.cyan;
                       textcolor=Colors.pinkAccent;
                       fs=30;
                       padd=50;
                       lf1=30;
                       ri1=20;
                       t=20;
                     });
                   },child: Text("start"),),
                 ),
                 Center(
                   child: RaisedButton(onPressed: (){
                     setState(() {
                       Height =200;
                       Widht=400;
                       myColor=Colors.red;
                       textcolor=Colors.black;
                       fs=20;
                       padd=10;
                       lf1=10;
                       ri1=10;
                       t=10;
                     });
                   },child: Text("PageThreeState"),),
                 ),
               ],
             ),
          ],
        ),
      ),

    );

  }
}


/* Container(
          height: 500,
          width: 500,
          color: Colors.grey,
              child: Stack(
                children: [

                  AnimatedPositioned(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: myColor,),
                      top: r,
                      left: l,
                      duration: Duration(seconds: 3),

                  )
                ],
              ),
            ),*/
// SizedBox(height: 50,),
/* Container(
              height: Height, width: Widht,
              child: AnimatedPhysicalModel(
                color:myColor ,
                child:Center(child: Text("asmaa"),) ,
                shape:sha ,
                duration:Duration(seconds: 2) ,
                shadowColor:textcolor ,
                elevation:ev ,
                curve: Curves.linearToEaseOut,
              ),
            ),*/
/*Container(
              child: AnimatedContainer(
                height: Height,
                width: Widht,
                color: Colors.red,
                duration: Duration(seconds: 2),
                onEnd: (){
                  setState(() {
                    Height=100;
                    Widht=100;

                  });
                },
              ),
            ),*/
/*Container(
              child: AnimatedOpacity(
                  opacity: opacity, duration: Duration(seconds: 2),
                child: Container(
                  padding: EdgeInsets.all(padd),
                  color: Colors.red,
                ),

              ),

            ),*/
/*Container(
              color: Colors.grey,
              height: 100,

              //width: double.infinity,
              child: AnimatedPadding(
                curve: Curves.bounceOut,
                padding: EdgeInsets.all(padd),
                child: Text("Asmaa", style:TextStyle(fontSize:fs , color:textcolor ) ,),

                duration: Duration(seconds: 2),
              ),
            ),*/
/* Container(
              color: Colors.grey,
              height: 100,
              width: double.infinity,
              child: AnimatedDefaultTextStyle(
                curve: Curves.bounceOut,
                child: Text("Asmaa"),
                style:TextStyle(fontSize:fs , color:textcolor ) ,
                duration: Duration(seconds: 2),
              ),
            ),*/
/* Center(
              child: AnimatedContainer(
                child: AnimatedDefaultTextStyle(
                  child: Text("Asmaa"),
                  style:TextStyle(fontSize:fs , color:textcolor ) ,
                  duration: Duration(seconds: 2),
                ),
                curve: Curves.bounceIn,
                duration: Duration(seconds: 1),
                height: Height, width: Widht,
                color: myColor,
              ),),*/
//SizedBox(height: 50,),
/*  Container(
              child: AnimatedCrossFade(
                firstChild:Container(height: 200, width: 100, color:myColor ,child: Text("first"),) ,
                secondChild: Container(height: 100, width: 200, color:Colors.cyanAccent ,child: Text("second"),) ,
                crossFadeState: showFirst? CrossFadeState.showFirst:CrossFadeState.showSecond,
                duration: Duration(seconds: 4),
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.linear,

              ),),*/
/* Container(
              color: Colors.yellow,
              height: 50,
             width: 200,
              child: Center(
                child: RaisedButton(onPressed: (){
                  setState(() {
                    Height =200;
                    Widht=400;
                    myColor=Colors.cyan;
                    showFirst=!showFirst;
                    textcolor=Colors.red;
                    fs=30;
                    padd=20;
                    ev=40;
                    sha= BoxShape.circle;
                    opacity=0.5;
                    r=100; l=100;
                  });
                },child: Text("PageThreeState"),),
              ),
            ),*/