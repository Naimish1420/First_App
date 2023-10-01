import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatePickerDemo extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DatePickerState(),
    );
  }
}

class DatePickerState extends StatefulWidget{

  @override
  DatePickerApp createState() => DatePickerApp();
}

class DatePickerApp extends State<DatePickerState>{

  String selectedDate = "Select Date";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 190, 190, 0.831),
          title: Text("Date Picker Demo", style: TextStyle(color: Colors.black),)
      ),
      body: Container(
        child: TextButton(
          onPressed: () {
            DatePicker.showDatePicker(
              context,
              currentTime: DateTime.now(),
              minTime: DateTime(2000,01,01),
              maxTime: DateTime(2024,12,31),
              onCancel: () {
                print("Cancel Method Call");
              },
              onChanged: (changeValue) {
                setState(() {
                  selectedDate = "Change Method Call : $changeValue";
                    print("Change Mathod Call : $changeValue");   
                });
              },
              onConfirm: (confirmValue) {
                setState(() {
                   selectedDate = "Confrim Method Call : $confirmValue";
                print("Confrim Mathod Call : $confirmValue");
                });
              },
            );
          },
          child: Text(selectedDate),
        ),
      ),
    );
  }
}