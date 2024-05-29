import 'package:get/get.dart';
import "package:flutter_application_4_getx/Binding/homeController.dart";

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
