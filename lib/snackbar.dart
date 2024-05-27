import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Snackbar",
        home: Scaffold(
          appBar: AppBar(
            title: Text("SnackBar"),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                          "Snackbar title", "This is the message from snackbar",
                          snackPosition: SnackPosition.BOTTOM,
                          //titleText:Text("Another title"),
                          //messageText :Text(
                          //"Another Message",
                          //style: TextStyle(color: Colors.white),),
                          colorText: Colors.red,
                          backgroundColor: Colors.black,
                          //borderRadius: 30,
                          //margin: EdgeInsets.all(10),
                          //maxWidth: 100,
                          //animationDuration: Duration(milliseconds: 3000),
                          //backgroundGradient:
                          //    LinearGradient(colors: [Colors.red, Colors.blue]),
                          borderColor: Colors.purple,
                          borderWidth: 4,
                          boxShadows: [
                            BoxShadow(
                                color: Colors.yellow,
                                offset: Offset(30, 50),
                                spreadRadius: 20,
                                blurRadius: 8)
                          ]);
                    },
                    child: Text("Show snackbar"))
              ],
            ),
          ),
        ));
  }
}
