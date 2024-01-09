import 'dart:developer';

import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics_app/async_redux/actions/decrement_action.dart';
import 'package:firebase_analytics_app/async_redux/actions/fetch_products_action.dart';
import 'package:firebase_analytics_app/async_redux/actions/increment_action.dart';
import 'package:firebase_analytics_app/async_redux/app_state.dart';
import 'package:firebase_analytics_app/async_redux/view_model/search_page_viewmodel.dart';
import 'package:firebase_analytics_app/screens/search.dart';
import 'package:flutter/widgets.dart';

class SearchPageConnector extends StatelessWidget {
  const SearchPageConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SearchPageViewmodel>(
      vm: () => Factory(this),
      builder: (context, vm) => SearchPage(
        counter: vm.number,
        response: vm.response,
        onIncrement: vm.onIncrement,
        onDecrement: vm.onDecrement,
        getAllProducts: vm.productsResponse,
      ),
    );
  }
}

class Factory
    extends VmFactory<AppState, SearchPageConnector, SearchPageViewmodel> {
  Factory(connector) : super(connector);

  Future<void> _getProducts() async {
    dispatch(FetchProductsAction());

    log("Executing Async Task");
  }

  @override
  SearchPageViewmodel fromStore() => SearchPageViewmodel(
        number: state.number,
        response: state.productsResponse,
        onIncrement: () => dispatch(IncrementAction(number: 1)),
        onDecrement: () => dispatch(DecrementAction(number: 1)),
        productsResponse: () => _getProducts(),
      );
}
