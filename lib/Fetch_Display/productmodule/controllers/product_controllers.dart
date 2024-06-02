import 'package:flutter_application_4_getx/Fetch_Display/apimodule/api_service.dart';
import 'package:flutter_application_4_getx/Fetch_Display/productmodule/models/product_model.dart';

import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      // ignore: unnecessary_null_comparison
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
