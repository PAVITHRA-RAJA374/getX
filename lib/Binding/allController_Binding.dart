import "package:flutter_application_4_getx/Binding/homeController.dart";
import 'package:get/get.dart';
import "package:flutter_application_4_getx/Binding/mycontroller.dart";

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
