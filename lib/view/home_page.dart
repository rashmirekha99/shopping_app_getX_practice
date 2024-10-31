import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/navigators.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';
import 'package:shopping_app_getx_practice/view/add_to_cart.dart';
import 'package:shopping_app_getx_practice/view/cart_index_page.dart';
import 'package:shopping_app_getx_practice/view/constant.dart';
import 'package:shopping_app_getx_practice/view/feed.dart';
import 'package:shopping_app_getx_practice/view/feed_index_page.dart';
import 'package:shopping_app_getx_practice/view/single_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          FeedIndexPage(),
          CartIndexPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: bottomNavigationKey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print('indx $index');
            print('_currentIndex $_currentIndex');
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
        ],
      ),
    );
  }
}
