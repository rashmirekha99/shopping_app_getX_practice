import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:shopping_app_getx_practice/controller/tap_controller.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TapController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Next Page"),
        ),
        body: GetBuilder<TapController>(builder: (_) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Center(
                    child: Text(
                  controller.x.toString(),
                  style: TextStyle(fontSize: 25),
                )),
                GestureDetector(
                  onTap: () {
                    controller.decreaseX();
                  },
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Decrease",
                      style: TextStyle(fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
