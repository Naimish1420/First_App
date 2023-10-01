import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget{

  @override
  ListMainApp createState() => ListMainApp();
}

class ListMainApp extends State<ListDemo>{

  List<String> titleArray = [
    "Android",
    "Java",
    "Php",
    "iOS",
    "Flutter",
    "Python"
  ];

  List<String> subTitleArray = [
    "Android Discription",
    "Java Discription",
    "Php Discription",
    "iOS Discription",
    "Flutter Discription",
    "Python Discription"
  ];

  List<String> imageArray = [
    "Nlogo5.jpg",
    "Np1.jpg",
    "Nlogo5.jpg",
    "Np1.jpg",
    "Nlogo5.jpg",
    "Np1.jpg"
  ];

  List<String> trailingArray = [
    "Np1.jpg",
    "Nlogo5.jpg",
    "Np1.jpg",
    "Nlogo5.jpg",
    "Np1.jpg",
    "Nlogo5.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(5, 190, 190, 0.831) ,
          title: Text("List Page",style: TextStyle(color: Colors.black)),
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder:(BuildContext context, int positions) {
            return ListTile(
              title: Text(titleArray[positions]),
              subtitle: Text(subTitleArray[positions]),
              leading: Container(width: 100.0,child: Image.asset("assets/images/${imageArray[positions]}")),
              trailing: Container(width: 100.0,child: Image.asset("assets/images/${trailingArray[positions]}")),
            );
          }),
        ),
    );
  }
}