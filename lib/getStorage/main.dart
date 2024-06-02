import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

//Get Storage used for key/value storage

Future<void> main() async {
  await GetStorage.init(); //storage driver initialization
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditiongController = TextEditingController();
  var storage = GetStorage();

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Get Storage and Email Validation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Email validation"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(16)),
              TextField(
                controller: emailEditiongController,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      //isEmail() is present in GetUtils
                      if (GetUtils.isEmail(emailEditiongController.text)) {
                        storage.write("email", emailEditiongController.text);
                      } else {
                        Get.snackbar("Invalid Email", "Give a valid mail ID",
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                    child: Text("Write")),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("The Email is ${storage.read("email")}");
                  },
                  child: Text("Read"))
            ],
          ),
        ),
      ),
    );
  }
}

/*
To listen for changes
  var lis = storage.listen(() {
    print("Email changed");
  });
When subscribed to listen event it is diposed using 
  storage.removeListen(lis);
To listen for changes in key
  storage.listenKey('email',(value){ print("New key is $value")});
To remove a key
  storage.remove('email');
To erase the container
  storage.erase();
To create a container with name:
  GetStorage g = GetStorage("MyStorage");
  await GetStorage.init("MyStorage");
*/
