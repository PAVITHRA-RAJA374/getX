import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/stateManagement/controllerSm/controller.dart';
import 'package:flutter_application_4_getx/stateManagement/controllerSm/upper.dart';
import 'package:get/get.dart';

//for pre defined class
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController mc = Get.put(MyController());

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
                    //"Student name : ${mc.upp.name}",
                    "Student name : ${mc.upp.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    mc.convertToUpperCase();

                    //mc.convertUpperCase();
                  },
                  child: Text("Upper Case")),
            ],
          ),
        ),
      ),
    );
  }
}
