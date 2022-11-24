
import 'package:animation/screens/page_three.dart';
import 'package:animation/screens/page_two.dart';
import 'package:flutter/material.dart';

import 'animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double valrot=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            height: 50,
            width: 200,
            child: Center(
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(SliderRight(page1: PageTwo()));
              },child: Text("Page Two"),),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Transform.scale(scale:1.5, child:Container(height: 100, width: 100,
              color: Colors.greenAccent,)),),
          SizedBox(height: 50,),
          Center(
            child: Transform.rotate(
                angle: valrot, origin:Offset(100,50),
                child:Container(
                  height: 100, width: 200,
                  color: Colors.blueAccent,
                )),),
          Slider(value: valrot,
              max: 3.14*2,  min: 0,
              onChanged: (val){
                setState((){
                  valrot=val;
                });
              }),
          SizedBox(height: 50,),
          Center(
            child: Transform.translate(offset: Offset(100,0), child:Container(height: 100, width: 100,
              color: Colors.brown,)),),
        ],
      ),
    );

  }
}
