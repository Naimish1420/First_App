import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_app/NavigationDrawerDemo.dart';
import 'package:my_first_app/siteConstant.dart';
import 'package:my_first_app/tabDemo.dart';

class SplashDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashState(),
    );
  }
}

class SplashState extends StatefulWidget{

  @override
  SplashApp createState() => SplashApp();
}

class SplashApp extends State<SplashState>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimerMethod();

  }

  Future<Timer> startTimerMethod() async {
    return new Timer(Duration(seconds: 3), () { 
      Navigator.push(context, MaterialPageRoute(builder: (context) => TabDemo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Splash Screen", style: TextStyle(color: Colors.black),),
     ),
     body: Center(
       child: Container(
        child: Image.asset(SiteConstant.STATIC_IMAGE_PATH+"Np1.jpg",width: 150.0,height: 150.0,),
       ),
     ),
    );
  }
}