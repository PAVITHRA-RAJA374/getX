import 'package:get/get.dart';

class MyController extends GetxController {
  var c = 0;
  /*void increment() async {
    await Future.delayed(Duration(seconds: 5));
    this.c++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }*/

  void onInit() {
    print("Init called");
    c++;
    super.onInit();
  }

  void onClose() {
    super.onClose();
  }
}
