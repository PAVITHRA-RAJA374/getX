import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

// ignore: camel_case_types
class Next_page extends StatefulWidget {
  const Next_page({super.key});

  @override
  Next_pageState createState() => Next_pageState();
}

// ignore: camel_case_types
class Next_pageState extends State<Next_page> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Next page",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Next_Page1"),
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Go back"))
              ],
            ),
          ),
        ));
  }
}
