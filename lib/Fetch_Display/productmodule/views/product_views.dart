import 'package:flutter/material.dart';
import 'package:flutter_application_4_getx/Fetch_Display/commonmodule/AppColor.dart';
import 'package:flutter_application_4_getx/Fetch_Display/commonmodule/AppString.dart';
import 'package:flutter_application_4_getx/Fetch_Display/productmodule/controllers/product_controllers.dart';
import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.productList),
          backgroundColor: Colors.blueAccent,
        ),
        body: Obx(() {
          if (productController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: productController.productList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                productController.productList[index].imageLink,
                                width: 150,
                                height: 100,
                                fit: BoxFit.fill,
                                color: AppColor.purple,
                                colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productController.productList[index].name,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(productController.productList[index].brand,
                                  style: TextStyle(
                                      fontSize: 18, color: AppColor.grey)),
                              Text(
                                  productController.productList[index].category,
                                  style: TextStyle(
                                      fontSize: 18, color: AppColor.grey)),
                            ],
                          ))
                        ],
                      ),
                      Container(
                        color: AppColor.grey,
                        height: 2,
                      )
                    ],
                  );
                });
          }
        }));
  }
}
