import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/stateManagement/reactiveCustom.dart/upper.dart';
import 'package:get/get.dart';

//for pre defined class
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var upp = upper();

  MyApp({super.key});

  //final upp = upper(name: "Tom", age: 25).obs; //Makes entire claa observable

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Student name : ${upp.name.value}",
                    //"Student name : ${upp.value.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    upp.name.value = upp.name.value.toUpperCase();

                    //upp.update((upper) {
                    //  upper?.name = upper.name.toString().toUpperCase();
                    //});
                  },
                  child: Text("Upper Case")),
            ],
          ),
        ),
      ),
    );
  }
}
