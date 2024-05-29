import "package:flutter_application_4_getx/Binding/mycontroller.dart";
import 'package:get/get.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
