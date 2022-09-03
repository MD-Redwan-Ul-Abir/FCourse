import 'dart:collection';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:untitled/model/product_model.dart';

import '../api_service.dart';

class ProductProvider extends ChangeNotifier {
  ProductProvider(apiService) : _apiService = apiService;

  APIServiceClass _apiService;
  final _products = LinkedHashMap<int, ProductModel>();

  List<ProductModel> get productList {
    return _products.values.toList();
  }

  Future getProductData() async {
    var result = await _apiService
        .get("/products", queryParams: {"visible": "true", "sort": "asc"});
    var data = convert.jsonDecode(result.body);
    var apiProductData = data["payload"];
    apiProductData.forEach((element) {
      var product = ProductModel.fromJson(element);
      _products[product.id] = product;
    });
    notifyListeners();
    return result;
  }
}
