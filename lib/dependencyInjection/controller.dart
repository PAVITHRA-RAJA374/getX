import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print("Presssed $counter times");
    await prefs.setInt('counter', counter);
  }
}
