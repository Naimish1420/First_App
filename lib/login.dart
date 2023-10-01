import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_app/home.dart';


class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginStatefulApp(),
    );
  }
}

class LoginStatefulApp extends StatefulWidget{

  @override
  LoginAppState createState() => LoginAppState();
}

class LoginAppState extends State<LoginStatefulApp>{

GlobalKey<FormState> formkey = new GlobalKey();
late String sEmail,sPassword;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
      
          title: Text("Login Page",style: TextStyle(color: Color.fromARGB(255, 19, 3, 2), fontSize: 20),),
          leading: IconButton(
            onPressed: () {
              print("Back Event Click");
            },
            icon: Icon(Icons.arrow_back_ios)
        ),
          ),
        body: Container(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/Np1.jpg" , width: 150, height: 100,),
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                         Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
                        labelText: "Email Id",
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (emailinput) {
                        if(emailinput!.isEmpty || emailinput == ""){
                            return "Email Id Requird";
                        } 
                        else if(!RegExp(r"^[a-zA-Z0-9._-]+@[a-z]+\.+[a-z]+").hasMatch(emailinput)){
                            return "Valid Email Id Required";
                        }
                        
                        else{
                          return null;
                        }
                      },
                      onSaved: (emailInput) {
                         sEmail= emailInput!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (passwordinput) {
                        if (passwordinput!.isEmpty  || passwordinput == "") {
                          return "Password Requird";
                        } 
                        else if(passwordinput.length<6){
                          return "min. 6 character required in Password";
                        }
                              
                        else{
                          return null;
                        }
                      },
                      onSaved: (passwordInput) {
                         sPassword= passwordInput!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      width: 150.0,
                      height: 40.0,
                      color: Color.fromARGB(198, 50, 199, 204),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              print("Login Successfully $sEmail ${sEmail.length} $sPassword" );
                           Fluttertoast.showToast(
                            msg: 'Login Successfully',
                            gravity: ToastGravity.CENTER,
                            toastLength: Toast.LENGTH_LONG,
                           );
                           Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (_) => HomePage(sEmail, sPassword))
                            );
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0),
                         
                          ),
                             ),
                      ),
                    ),
                  ),
                      ],
                    )
                    )
                 
                ],
              ),
            ),
          ),
        ),
      );
  }
}