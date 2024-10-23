import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_garden/controller/product_controller.dart';
import 'package:home_garden/view/constant.dart';

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
                  Text(_productController.productList[widget.index].description)
                
                
                ],
              ),
            ),
          )),
    );
  }
}
