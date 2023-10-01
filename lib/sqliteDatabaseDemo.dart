import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SqliteList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SqliteListDemo(),
    );
  }
}

class SqliteListDemo extends StatefulWidget{

  @override
  SqliteListState createState() => SqliteListState();
}

class SqliteListState extends State<SqliteListDemo>{

  GlobalKey<FormState> formState = GlobalKey();
 late String sName, sEmail, sContact, sPassword;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Sqlite Database", style: TextStyle(color: Colors.black),),
       ),
       body: Container(
        child: Form(
          key: formState,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: Text("Name"),
                    hintText: "Enter Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                ),
                validator: (nameValue) {
                  if (nameValue!.isEmpty) {
                    return "Name Required";
                  }
                },
                onSaved: (nameValue) {
                  sName = nameValue!;
                },
               ),
              ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Email Id"),
                    hintText: "Enter Email Id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                ),
                validator: (emailValue) {
                  if (emailValue!.isEmpty) {
                    return "Email Id Required";
                  }
                  else if(!RegExp(r"^[a-zA-Z0-9._-]+@[a-z]+\.+[a-z]+").hasMatch(emailValue)){
                            return "Valid Email Id Required";
                        }
                },
                onSaved: (emailValue) {
                  sEmail = emailValue!;
                },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  decoration: InputDecoration(
                    label: Text("Contact No"),
                    hintText: "Enter Contact No.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                ),
                validator: (contactValue) {
                  if (contactValue!.isEmpty) {
                    return "Contact No. Required";
                  }
                  else if(contactValue.length<10){
                    return "Valid Contact No. Requird";
                  }
                },
                onSaved: (contactValue) {
                  sContact = contactValue!;
                },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                ),
                validator: (passwordValue) {
                  if (passwordValue!.isEmpty) {
                    return "Password Is Required";
                  }
                   else if(passwordValue.length<6){
                    return "Min. 6 Character Is Required";
                  }
                },
                onSaved: (passwordValue) {
                  sPassword = passwordValue!;
                },
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 50.0),
               child: Container(
                width: 200.0,
                height: 40.0,
                color:  Color.fromRGBO(5, 190, 190, 0.831),
                 child: TextButton(
                  onPressed: () {
                    if(formState.currentState!.validate()){
                       formState.currentState!.save();
                    }
                  }, 
                  child: Text(
                    'Insert', 
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                 ),
               ),
             ),
            ],
          ),
        ),
       ),
    );
  }
}