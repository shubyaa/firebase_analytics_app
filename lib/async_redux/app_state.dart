import 'package:firebase_analytics_app/model/products_response.dart';

class AppState {
  final int number;
  final ProductsResponse productsResponse;

  AppState({
    required this.number,
    required this.productsResponse,
  });

  AppState copy({
    int? number,
    ProductsResponse? productsResponse,
  }) {
    return AppState(
        number: number ?? this.number,
        productsResponse: productsResponse ?? this.productsResponse);
  }

  static AppState initialState() =>
      AppState(number: 0, productsResponse: ProductsResponse.initialize());

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppState && number == other.number;
  @override
  int get hashCode => number.hashCode;
}
