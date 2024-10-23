import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_garden/controller/product_controller.dart';
import 'package:home_garden/services/remote_services.dart';
import 'package:home_garden/view/constant.dart';
import 'package:home_garden/view/single_product.dart';

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
    print('Length' + _productController.productList.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: Obx(
              () => GridView.builder(
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
                  }),
            )),
          ],
        ),
      ),
    );
  }
}
