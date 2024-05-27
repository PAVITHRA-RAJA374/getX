import 'package:get/get.dart';

class MyController extends GetxController {
  var c = 0;

  void increment() {
    c++;
    update(['txtCount']);
  }
}
