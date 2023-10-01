import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget{

  @override
  HeroAnimationState createState() => HeroAnimationState();
}

class HeroAnimationState extends State<HeroAnimation>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Hero Animation", style: TextStyle(color: Colors.black),),
       ),
       body: Container(),
    );
  }
}