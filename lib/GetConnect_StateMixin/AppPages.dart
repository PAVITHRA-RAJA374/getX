import 'package:get/get.dart';
import 'home_binding.dart';
import 'home_view.dart'; // Assuming you have a HomeView class

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
