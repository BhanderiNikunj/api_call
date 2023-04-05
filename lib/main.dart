import 'package:api_call/Screen/Detail/View/DetailScreen.dart';
import 'package:api_call/Screen/Product/View/ProductScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const ProductScreen(),
        'detail':(context) => const DetailScreen(),
      },
    ),
  );
}
