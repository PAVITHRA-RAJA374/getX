import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("next page",
                  style: TextStyle(fontSize: 18, color: Colors.amber)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "This data is from Home Screen");
              },
              child: const Text("Go to main",
                  style: TextStyle(fontSize: 18, color: Colors.amber)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "${Get.arguments}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
