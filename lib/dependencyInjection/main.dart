import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/dependencyInjection/controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    //  MyController instance is created even if it is not used
    //MyController myController = Get.put(MyController(),tag: 'instance1',permanent:true); //if permanent=true, countroller will be alive throught the app (only one incstance is created)
    Get.lazyPut(() => MyController(),
        tag: 'instance2',
        fenix:
            true); //instance is created when it is used otherwise discarded. when used,Get recreates the instance
    //Get.putAsync<MyController>(() async => await MyController());
    //Get.create(() => MyController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dependency injection",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dependecy injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>(tag: 'instance2');
                    //Get.find<MyController>();
                    //Get.find<MyController>().incrementCounter();
                  },
                  child: Text('Click'))
            ],
          ),
        ),
      ),
    );
  }
}
