import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Bottom Sheet",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Sheet"),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                            child: Wrap(children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text('Light mode'),
                            onTap: () => {Get.changeTheme(ThemeData.light())},
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text('Dark mode'),
                            onTap: () => {Get.changeTheme(ThemeData.dark())},
                          )
                        ])),
                        barrierColor: Colors.lightBlue,
                        backgroundColor: Colors.pink,
                        isDismissible: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2,
                          ),
                        ),
                        //enableDrag: false,
                      );
                    },
                    child: Text("Show Bottom Sheet")),
              ],
            ),
          ),
        ));
  }
}
