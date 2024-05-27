import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/internationalization/controller.dart';
import 'package:flutter_application_4_getx/internationalization/translations.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internationalization'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "hello".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('ta', 'IN');
                },
                child: Text(
                  'தமிழ்',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
                child: Text(
                  'English',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
                child: Text(
                  'Hindi',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
