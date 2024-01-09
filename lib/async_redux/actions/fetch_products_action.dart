import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics_app/api.dart';
import 'package:firebase_analytics_app/async_redux/app_state.dart';
import 'package:firebase_analytics_app/model/products_response.dart';

class FetchProductsAction extends ReduxAction<AppState> {
  Api api = Api();

  @override
  before() {
    api.initialize();
    return super.before();
  }

  @override
  Future<AppState?> reduce() async {
    ProductsResponse productsResponse = await api.getAllProducts();
    dispatch(QueryAction(productsResponse: productsResponse));
    return null;
  }
}

class QueryAction extends ReduxAction<AppState> {
  final ProductsResponse productsResponse;

  QueryAction({required this.productsResponse});

  @override
  AppState reduce() {
    return state.copy(productsResponse: productsResponse);
  }
}
