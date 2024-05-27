import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/stateManagement/lifeCycles/controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  MyApp({super.key});

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Controller Life Cycles",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Controller lifeCycles"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  //initState: (data) => myController.increment(),
                  //dispose: (_) => myController.cleanUpTask(),
                  builder: (controller) {
                return Text(
                  "The value of count is ${controller.c}",
                  style: TextStyle(fontSize: 20),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
