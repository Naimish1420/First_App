import 'package:flutter/material.dart';
import 'package:my_first_app/call.dart';
import 'package:my_first_app/chat.dart';
import 'package:my_first_app/status.dart';

class BottomDemo extends StatefulWidget{

  @override
  BottomState createState() => BottomState();
}

class BottomState extends State<BottomDemo>{

  var selectedindex = 0;
  var tabPage = [ChatDemo(),StatusDemo(),CallDemo()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Bottom Navigation Demo", style: TextStyle(color: Colors.black),),
        ),
        body: tabPage[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.verified_user_sharp), label: "Profile"),
          ],
          currentIndex:selectedindex,
          selectedItemColor: Colors.black,
          onTap:(index){
             ClickMethod(index);
          }
        ),
      ),
    );
  }

  ClickMethod(var index){
    setState(() {
      selectedindex = index;
    });
    
  }
}