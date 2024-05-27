import 'package:flutter/material.dart';
import 'package:get/get.dart';

//for ppre defined class
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var count = 0.obs;

  MyApp({super.key});

  void increment() {
    count++;
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Count value $count",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Increment")),
            ],
          ),
        ),
      ),
    );
  }
}
