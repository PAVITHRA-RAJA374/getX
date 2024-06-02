// Fetch data from server

import 'package:flutter_application_4_getx/Fetch_Display/productmodule/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'
            as Uri);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      throw Exception("Products are unable to load");
    }
  }
}
