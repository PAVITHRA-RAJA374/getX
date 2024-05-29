import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/Service/service.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print("starting Services");
  await Get.putAsync<Service>(
      () async => await Service()); //Service is user defined method
  print("All services started");
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetX Services",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX Services"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find<Service>().incrementCounter();
                  },
                  child: Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}
