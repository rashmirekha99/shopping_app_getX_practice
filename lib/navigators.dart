import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> globalNavigatorkey =
    GlobalKey<NavigatorState>(debugLabel: 'global');

final GlobalKey<NavigatorState> feedNavigatorkey =
    GlobalKey<NavigatorState>(debugLabel: 'feed');

final GlobalKey<NavigatorState> cartNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'cart');

final GlobalKey<NavigatorState> bottomNavigationKey =
    GlobalKey<NavigatorState>(debugLabel: 'bottom');


  // static var client = http.Client();
  // static Future<List<Product>?> fetchProducts() async {
  //   var response =
  //       await client.get(Uri.parse('https://fakestoreapi.com/products'));

  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;

  //     return productFromJson(jsonString);
  //   } else {
  //     return null;
  //   }
  // }
