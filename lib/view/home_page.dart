import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';
import 'package:shopping_app_getx_practice/view/add_to_cart.dart';
import 'package:shopping_app_getx_practice/view/constant.dart';
import 'package:shopping_app_getx_practice/view/single_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductController _productController = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(() => MyCart());
              },
              child: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: Obx(() {
              if (_productController.loading.value)
                return Center(child: CircularProgressIndicator());
              else
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemCount: _productController.productList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => SingleProduct(index: index));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: Offset(0, 1),
                                    blurRadius: 10,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 5,
                              children: [
                                Text(
                                  _productController.productList[index].title,
                                  overflow: TextOverflow.clip,
                                  maxLines: 1,
                                ),
                                Hero(
                                  tag: {_productController.productList[index]},
                                  child: Image.network(
                                      height: 100,
                                      _productController
                                          .productList[index].image),
                                )
                              ]),
                        ),
                      );
                    });
            })),
          ],
        ),
      ),
    );
  }
}
