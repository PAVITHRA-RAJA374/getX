import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/stateManagement/getxTypeCtrl/controller.dart';
import 'package:get/get.dart';

//for pre defined class
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController mc = Get.put(MyController());

  MyApp({super.key});

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
              GetX<MyController>(
                  //init: MyController(),
                  builder: (controller) {
                return Text(
                  //"Value of count : ${controller.count}",
                  "Value of count : ${mc.count}",
                  style: TextStyle(fontSize: 25),
                );
              }),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    mc.increment();
                    //Get.find<MyController>().increment(); //if instance of controller not created at top
                  },
                  child: Text("Increment")),
            ],
          ),
        ),
      ),
    );
  }
}
