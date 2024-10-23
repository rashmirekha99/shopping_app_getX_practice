import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_garden/controller/product_controller.dart';
import 'package:home_garden/view/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text('Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Obx(
            () => GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: _productController.productList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
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
                        Text("Product Name"),
                        Text("Rs:100.00"),
                        Image.network('src')
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
