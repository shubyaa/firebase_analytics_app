import 'package:firebase_analytics_app/model/products_response.dart';
import 'package:firebase_analytics_app/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final int counter;
  final ProductsResponse response;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final Future Function() getAllProducts;

  const SearchPage({
    Key? key,
    required this.counter,
    required this.response,
    required this.onIncrement,
    required this.onDecrement,
    required this.getAllProducts,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    getPackageInfo();
    widget.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: widget.response.title == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Image.network(
                        widget.response.image!,
                        width: 150,
                        height: 150,
                        filterQuality: FilterQuality.medium,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        widget.response.title!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        widget.response.category!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        widget.response.description!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: widget.onDecrement,
                        icon: const Icon(Icons.arrow_back_rounded)),
                    Text(
                      "${widget.counter}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    IconButton(
                        onPressed: widget.onIncrement,
                        icon: const Icon(Icons.arrow_forward_rounded)),
                  ],
                ),
              ],
            ),
    );
  }
}
