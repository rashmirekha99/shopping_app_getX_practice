import 'package:flutter/material.dart';
import 'package:shopping_app_getx_practice/navigators.dart';
import 'package:shopping_app_getx_practice/view/feed.dart';
import 'package:shopping_app_getx_practice/view/single_product.dart';

class FeedIndexPage extends StatefulWidget {
  const FeedIndexPage({super.key});

  @override
  State<FeedIndexPage> createState() => _FeedIndexPageState();
}

class _FeedIndexPageState extends State<FeedIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: feedNavigatorkey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => FeedPage());
          case '/single_product':
            return MaterialPageRoute(builder: (context)=>SingleProduct(index: int.parse(settings.arguments.toString())));
        }
      },
    );
  }
}
