import 'package:flutter/material.dart';
//import 'package:flutter_application_4_getx/nammedRoutes/unknownRoute.dart';
import 'package:get/get.dart';
import 'package:flutter_application_4_getx/nammedRoutes/home.dart';
import 'nextPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Named routes",
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(name: "/", page: () => const MyApp()),
          GetPage(name: "/home", page: () => home()),
          GetPage(
              name: "/nextPage",
              page: () => nextPage(),
              transition:
                  Transition.leftToRight // overrides the default transition
              ),
          //GetPage(name: '/nextPage/:someValue',
          //page: () => nextPage(),
          //transition: Transition.leftToRight),
        ],
        //unknownRoute: GetPage(name: '/not found', page: () => unknownRoute()),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome Page'),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Welcome page"),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/home");
                    //Get.offNamed(
                    //    "/home"); //no option to return to previous page
                    //Get.offAllNamed("/home");
                    //Get.toNamed("/home? channel= mine & content= Flutter Getx");
                  },
                  child: const Text("Go to home page"),
                ),
              ],
            ),
          ),
        ));
  }
}
