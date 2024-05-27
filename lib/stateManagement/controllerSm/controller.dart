import 'package:flutter_application_4_getx/stateManagement/reactiveCustom.dart/upper.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var upp = upper();
  void convertToUpperCase() {
    upp.name.value = upp.name.value.toUpperCase();
  }

  /*var upp = upper(name: "Tom", age: 25).obs;

  void convertUpperCase() {
    upp.update((upper) {
      upp.name = upp.name.toString().toUpperCase();
    });
  }*/
}
