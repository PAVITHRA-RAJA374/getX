import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/GetConnect_StateMixin/AppPages.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Application",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
