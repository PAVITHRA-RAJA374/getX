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
          title: Text('Workers'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  onChanged: (val) {
                    myController.increment();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
