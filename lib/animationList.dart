import 'package:flutter/material.dart';
import 'package:my_first_app/heroAnimation.dart';
import 'package:my_first_app/simpleAnimation.dart';

class AnimationList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationListDemo(),
    );
  }
}

class AnimationListDemo extends StatefulWidget{

  @override
  AnimationListApp createState() => AnimationListApp();
}

class AnimationListApp extends State<AnimationListDemo>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Animation List", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200.0,
                height: 40.0,
                color: Colors.red.shade200,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HeroAnimation()));
                  },
                   child: Text('Hero Animation',style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                 width: 200.0,
                height: 40.0,
                color: Colors.red.shade200,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SimpleAnimation()));
                  },
                   child: Text('Simple Animation',style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}