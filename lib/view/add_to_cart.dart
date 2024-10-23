import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/view/constant.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController _productController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Obx(() => ListView.builder(
              shrinkWrap: true,
              itemCount: _productController.cartIndexList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                          height: 60,
                          width: 60,
                          _productController
                              .productList[
                                  _productController.cartIndexList[index]]
                              .image),
                      Text(
                          overflow: TextOverflow.clip,
                          _productController
                              .productList[
                                  _productController.cartIndexList[index]]
                              .title
                              .toString()
                              .substring(0, 10)),
                      GestureDetector(
                          onTap: () {
                            _productController.deleteFromCart(index);
                          },
                          child: Icon(Icons.delete))
                    ],
                  ),
                );
              }))),
    );
  }
}
