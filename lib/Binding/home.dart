import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:flutter_application_4_getx/Binding/homeController.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The Value is ${Get.find<HomeController>().count}',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.find<HomeController>().increment();
              },
              child: Text(
                'Increment',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Back',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
