
import 'package:flutter/material.dart';

class SliderRight extends PageRouteBuilder{
  final page1;
  SliderRight({this.page1}):
        super(
          pageBuilder: (context ,animation ,animationtwo)=> page1,
          transitionsBuilder: (context ,animation ,animationtwo ,child){

            var begin=0.0;
            var end =1.0;
            var tween =Tween(begin: begin,end: end);
            var cureAnimation =CurvedAnimation(parent: animation, curve:Curves.linearToEaseOut);
            return ScaleTransition(
              scale: tween.animate(cureAnimation),
              child: RotationTransition(turns: tween.animate(cureAnimation),child: child,),);
            /*return FadeTransition(opacity:animation,
              child: child,);*/

            /*return Align(alignment:Alignment.center,
              child: SizeTransition(sizeFactor:animation ,child: child,),);*/
           /* var begin=0.0;
            var end =.5;
            var tween =Tween(begin: begin,end: end);
            var cureAnimation =CurvedAnimation(parent: animation, curve:Curves.linear);
            return RotationTransition(turns:tween.animate(cureAnimation),child: child,);
*/
           /* var begin=0.0;
            var end =0.5;
            var tween =Tween(begin: begin,end: end);
            var cureAnimation =CurvedAnimation(parent: animation, curve:Curves.linearToEaseOut);
            return ScaleTransition(scale: tween.animate(cureAnimation),child: child,);*/


           /* var begin=Offset(0,1);
            var end =Offset(0,0);
            var tween =Tween(begin: begin,end: end);
            var cureAnimation =CurvedAnimation(parent: animation, curve:Curves.linearToEaseOut);
            return SlideTransition(position: tween.animate(cureAnimation),child: child,);*/

          /*  var offestAnimation=animation.drive(tween);
            return SlideTransition(position: offestAnimation ,child: child,);
*/
          }
  );
}