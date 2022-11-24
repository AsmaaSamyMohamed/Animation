
import 'package:animation/screens/page_three.dart';
import 'package:flutter/material.dart';

import 'animation.dart';
class PageFour extends StatefulWidget {
  PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> with SingleTickerProviderStateMixin{

  late AnimationController controller ;
  late Animation animation;

  @override
  void initState(){
    controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation=Tween(begin:50.0 ,end: 0  ).animate(controller)..addStatusListener((state) {
      print(state);
    })..addListener(() {
      setState(() {});
      print("valu ${animation.value}");
    });
    controller..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Transform.rotate(
                angle: 3.14*animation.value,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ),

              ),
            ),
        ],
      ),

    );

  }
}
