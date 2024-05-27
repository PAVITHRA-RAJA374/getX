import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_4_getx/stateManagement/uniqueID/controller.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controller Unique ID'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text(
                    "The Value of count is ${controller.c}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              GetBuilder<MyController>(
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.c}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
