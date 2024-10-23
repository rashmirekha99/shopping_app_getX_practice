import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/controller/product_controller.dart';
import 'package:shopping_app_getx_practice/controller/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
    Get.lazyPut(() => TapController());
  }
}
