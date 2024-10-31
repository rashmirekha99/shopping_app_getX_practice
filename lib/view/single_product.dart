import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/navigators.dart';
import 'package:shopping_app_getx_practice/view/constant.dart';
import 'package:shopping_app_getx_practice/view/home_page.dart';

class SingleProduct extends StatefulWidget {
  SingleProduct({super.key, required this.index});
  int index;

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  ProductController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
        actions: [
          GestureDetector(
              onTap: () {
                // Navigator.of(context).pushNamed('/');

                var bar =
                    bottomNavigationKey.currentWidget as BottomNavigationBar;

                bar.onTap!(1);
                cartNavigatorKey.currentState!.pushNamed('/');
              },
              child: Icon(Icons.shopping_cart))
        ],
      ),
      body: Obx(() => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  Text(
                    _productController.productList[widget.index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Hero(
                      tag: {widget.index},
                      child: Image.network(
                          height: 300,
                          _productController.productList[widget.index].image)),
                  Text(
                      _productController.productList[widget.index].description),
                  ElevatedButton(
                    onPressed: () {
                      _productController.addToCart(widget.index);
                      print(_productController.cartIndexList);
                      // Get.to(() => HomePage());
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text('Add to cart'),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
