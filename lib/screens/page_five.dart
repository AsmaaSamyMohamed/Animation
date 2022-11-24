import 'package:flutter/material.dart';

class PageFive extends StatefulWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> with TickerProviderStateMixin{
 late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );
    animationController.forward();
    animationController.addListener(() {
      setState(() {
        if (animationController.status == AnimationStatus.completed) {
          animationController.repeat();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: new AnimatedBuilder(
        animation: animationController,
        child: new Container(
          height: 80.0,
          width: 80.0,
          child: new Image.asset('assest/image/Dar.png'),
        ),
        builder: (BuildContext context, child ) {
          return new Transform.rotate(
            angle: animationController.value,
            child: child,
          );
        },
      ),
    );
  }
  }

