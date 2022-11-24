
import 'package:animation/screens/page_five.dart';
import 'package:animation/screens/page_four.dart';
import 'package:animation/screens/page_three.dart';
import 'package:flutter/material.dart';

import 'animation.dart';
class PageTwo extends StatefulWidget {
   PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  double valrot=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform(
                transform:Matrix4.rotationZ(3.14/4)..scale(2.0)..translate(30.0) ,
                child:Container(
                  height: 50, width: 50,
                  color: Colors.blueAccent,
                )),),
          Slider(value: valrot,
              max: 4,  min: 0,
              onChanged: (val){
                setState((){
                  valrot=val;
                });
              }),
          SizedBox(height: 100,),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(SliderRight(page1: PageThree()));
          },child: Text("Page Three"),),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(SliderRight(page1: PageFour()));
          },child: Text("Page Four"),),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(SliderRight(page1: PageFive()));
          },child: Text("Page Five"),),

        /*  Center(
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: Text("Page two"),
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 50,
            width: 200,
            child: Center(
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(SliderRight(page1: PageThree()));
              },child: Text("Page Two"),),
            ),
          ),*/
        ],
      ),

    );

  }
}
