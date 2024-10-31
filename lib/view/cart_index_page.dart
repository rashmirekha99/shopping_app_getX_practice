import 'package:flutter/material.dart';
import 'package:shopping_app_getx_practice/navigators.dart';
import 'package:shopping_app_getx_practice/view/add_to_cart.dart';

class CartIndexPage extends StatefulWidget {
  const CartIndexPage({super.key});

  @override
  State<CartIndexPage> createState() => _CartIndexPageState();
}

class _CartIndexPageState extends State<CartIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: cartNavigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => MyCart());
        }
      },
    );
  }
}
