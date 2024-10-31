import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/view/constant.dart';
import 'package:shopping_app_getx_practice/view/single_product.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final ProductController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
        // actions: [
        //   GestureDetector(
        //       onTap: () {
        //         Get.to(() => MyCart());
        //       },
        //       child: Icon(Icons.shopping_cart))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: Obx(() {
              if (_productController.loading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemCount: _productController.productList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Get.to(() => SingleProduct(index: index));
                          Navigator.of(context)
                              .pushNamed('/single_product', arguments: index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: const Offset(0, 1),
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
              }
            })),
          ],
        ),
      ),
    );
  }
}
