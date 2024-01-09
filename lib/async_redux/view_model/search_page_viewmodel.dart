import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics_app/model/products_response.dart';
import 'package:flutter/widgets.dart';

class SearchPageViewmodel extends Vm {
  final int number;
  final ProductsResponse response;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final Future Function() productsResponse;

  SearchPageViewmodel(
      {required this.number,
      required this.response,
      required this.onIncrement,
      required this.onDecrement,
      required this.productsResponse})
      : super(equals: [number, response]);
}
