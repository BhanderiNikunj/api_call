import 'dart:convert';

import 'package:api_call/Screen/Product/Model/ProductModel.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  List<dynamic> productList = [];
    Future<void> ApiCall() async {
      String? Api="https://fakestoreapi.com/products";

      Uri uri= Uri.parse(Api);

      var result = await http.get(uri);

      var Json = jsonDecode(result.body);

      productList = Json.map((e) => productModel().productFromJson(e)).toList();
    }
}