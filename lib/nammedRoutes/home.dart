import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to Home page",
              style: TextStyle(fontSize: 22, color: Colors.red),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextPage");
                Get.toNamed("/nextPage/12345");
              },
              child: const Text("next page",
                  style: TextStyle(fontSize: 18, color: Colors.amber)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go Back to main",
                  style: TextStyle(fontSize: 18, color: Colors.amber)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The channel name is ${Get.parameters['channel']} and the content is ${Get.parameters['content']}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
