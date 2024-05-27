import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Main",
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Main page'),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Welcome to Unnamed routes"),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    //Get.to(
                    //  Home(),
                    //  fullscreenDialog: true,
                    //  transition: Transition.downToUp,
                    //  duration: Duration(milliseconds: 1000),
                    //  curve: Curves.easeIn,
                    //);
                    //Get.off(Home()); "Cannot return back to previous page"
                    //Get.offAll(Home());
                    Get.to(Home(),
                        arguments: "This is the data from Main page");
                    var data = await Get.to(Home());
                    print("The received data is - $data");
                  },
                  child: const Text("Go to home page"),
                ),
              ],
            ),
          ),
        ));
  }
}
