import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_first_app/siteConstant.dart';

class CustomList extends StatefulWidget{

  @override
  CustomListMain createState() => CustomListMain();
}

class CustomListMain extends State<CustomList>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Custom List", style: TextStyle(color: Colors.black)),
        ),
        body: Container(
          child: CustomListDesign(),
        ),
      ),
    );
  }
}

class CustomListDesign extends StatelessWidget {

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

  List<String> priceArray = [
    "1000",
    "1500",
    "1200",
    "2000",
    "2500",
    "3000"
  ];

   
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return ListView.builder(
      itemCount: imageArray.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 5.0,
            color: Color.fromARGB(249, 111, 248, 218),
            shadowColor: Color.fromRGBO(12, 172, 52, 0.824),
            child: Row(
              children: [
                Image.asset("assets/images/${imageArray[index]}", width: 100.0,height: 100.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                       Text(titleArray[index],
                               style: TextStyle(color: Colors.black, 
                               fontSize: 20.0,
                               fontWeight: FontWeight.bold),),
                       Text(subTitleArray[index],
                              style: TextStyle(color: Colors.black, 
                               fontSize: 16.0,)),
                      Text(
                              SiteConstant.PRICE_SYMBOL + priceArray[index],
                              style: TextStyle(color: Colors.black, 
                               fontSize: 16.0,
                               fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
  }
}