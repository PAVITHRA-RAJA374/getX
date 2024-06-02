import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_4_getx/GetView_GetWidget/controller.dart';

void main() {
  runApp(MyApp());
}

//For Single controller  GetView and GetWidget is used

//Get view give the instance of the count controller and the name of the instance is "controller"
//For Single controller  Get.find can be avoided

//Get Widget - Gives same instance of Get.find everytime
//Very useful when used in combination of Get.create

class MyApp extends GetWidget<CountController> {
  @override
  Widget build(BuildContext context) {
    //Get.put(CountController());               // (Same hashcode)
    Get.create(
        () => //For GetView: Creates different instances for count controller(Different hashcode)
            CountController()); //For GetWidget: same instance(same hashcode)
    return GetMaterialApp(
      title: "Get View",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get view"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(controller.hashCode);
                    controller.increment();
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
