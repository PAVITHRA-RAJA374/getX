//to remove the tight coupling between controller with our ui code
import 'package:flutter_application_4_getx/Binding/home.dart';
import 'package:flutter_application_4_getx/Binding/homeController_Binding.dart';
import 'package:flutter_application_4_getx/Binding/myappContoller_Binding.dart';
import 'package:flutter_application_4_getx/Binding/mycontroller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => Home(),
      //       binding: HomeControllerBinding()),
      // ],
      getPages: [
        GetPage(
            name: '/home',
            page: () => Home(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => HomeControllerBinding());
            })),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Binding',
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The Value is ${Get.find<MyController>().count}',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Get.to(Home(),
                  // transition: Transition.upToDown);
                  Get.toNamed(
                    '/home',
                  );
                  Transition.upToDown;
                },
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
