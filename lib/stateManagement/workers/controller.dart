import 'package:get/get.dart';

class MyController extends GetxController {
  var c = 0.obs;
  void increment() {
    c++;
  }

  void onInit() {
    super.onInit();
    print("Init called");

    ever(c, (_) => print(c)); //called every time when count value changes

    //everAll([c],(_) => print(c)); //called every time when any variable value of list changes

    //once(c, (_) => print(c));

    //debounce(c, (_) => print("Default duration is 800ms"),time: Duration(seconds: 1)); //called whenever the user stops typing for 1 sec

    //interval(c, (_) => print("Ignore all changes"),time: Duration(seconds: 3)); //set time frame for certain seconds
  }
}
