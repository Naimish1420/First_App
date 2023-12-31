import 'package:flutter/material.dart';

class AddList extends StatefulWidget{

  @override
  AddListState createState() => AddListState();
}

class AddListState extends State<AddList>{

  TextEditingController rollController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  var rollArray = [];
  var nameArray = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Add With List", style: TextStyle(color: Colors.black),)
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: rollController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Roll NO"),
                  ),),
              ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Student Name"),
                  ),),
                ), 
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Color.fromRGBO(5, 190, 190, 0.831),
                  child: TextButton(onPressed: () {
                    if(rollController.text == '' && nameController.text == ''){


                    }
                    else{
                       //print(rollController.text  + "________" +  nameController.text);
                       addData();
                    }
                  },
                   child: Text('Add', 
                   style: TextStyle(color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),),
               ),
              ), 
              Expanded(
                child: ListView.builder(
                  itemCount: nameArray.length,
                  itemBuilder:(context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Card(
                      color: rollArray[index] == "5" ?
                             Colors.amber.shade200 : 
                              rollArray[index] == "10" ?
                              Colors.red.shade200 : 
                              Colors.green.shade200,
                      elevation: 3.0,
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                            child: Column(
                              children: [
                                Text("Roll No : "+rollArray[index]),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Student Name : "+nameArray[index]),
                                ),
                              ],
                            ),
                         ),
                       ),
                     ),
                   );
                }
                ),
              ),             
            ],
          ),
        ),
      ),
    );
  }

  addData(){
    setState(() {
      rollArray.insert(0,rollController.text);
      nameArray.insert(0,nameController.text);

      rollController.text = "";
      nameController.text = "";

      print(rollArray);
      print(nameArray);
    });
  }

}