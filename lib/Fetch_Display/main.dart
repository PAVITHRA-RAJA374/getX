//    https://app.quicktype.io/
//    https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie

import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/Fetch_Display/commonmodule/AppColor.dart';
import 'package:flutter_application_4_getx/Fetch_Display/commonmodule/AppString.dart';
import 'package:flutter_application_4_getx/Fetch_Display/productmodule/views/product_views.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
