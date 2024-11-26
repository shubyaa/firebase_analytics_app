import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_analytics_app/model/products_response.dart';

class Api {
  late Dio dio;

  void initialize() {
    dio = Dio();
  }

  Future<ProductsResponse> getAllProducts() async {
    Response response = await dio.get("https://fakestoreapi.com/products");

    log(response.data[0].toString());

    ProductsResponse productsResponse =
        ProductsResponse.fromJson(response.data[0]);

    return productsResponse;
  }
}
