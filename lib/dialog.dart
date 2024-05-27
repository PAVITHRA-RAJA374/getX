import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Dialog",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Dialog"),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //Get.defaultDialog();
                      Get.defaultDialog(
                        title: "Alert Dialog",
                        titleStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        middleText: "Are you sure to exit?",
                        middleTextStyle: TextStyle(fontSize: 20),
                        backgroundColor: Colors.pink,
                        radius: 50,
                        // To customize the middle text
                        //content: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //  children: [
                        //  CircularProgressIndicator(),
                        //  SizedBox(
                        //    width: 15,
                        //  ),
                        //  Expanded(child: Text("Data Loading")),
                        // ],
                        //),
                        //textCancel: "Cancel",
                        //cancelTextColor: Colors.white,
                        //textConfirm: "Exit",
                        //confirmTextColor: Colors.white,
                        //onCancel: () {},
                        //onConfirm: () {},
                        buttonColor: Colors.blue,
                        //cancel: Text(
                        //  "No",
                        //  style: TextStyle(color: Colors.white),
                        //),
                        //confirm: Text(
                        //  "Quit",
                        //  style: TextStyle(color: Colors.white),
                        //),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("NO")),
                          ElevatedButton(onPressed: () {}, child: Text("Yes"))
                        ],
                        barrierDismissible: true,
                      );
                    },
                    child: Text("Show Dialog")),
              ],
            ),
          ),
        ));
  }
}
