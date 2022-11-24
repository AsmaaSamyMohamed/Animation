
import 'package:flutter/material.dart';
class Transform extends StatelessWidget {
  const Transform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(

          child: Center(
            child: Transform.scale(scale:0.5, child:Container(height: 100, width: 100,
              color: Colors.greenAccent,)),
          ),
        ),
      ),
    );
  }
}
