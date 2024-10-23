import 'package:get/get.dart';
import 'package:home_garden/controller/product_controller.dart';
import 'package:home_garden/controller/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
    Get.lazyPut(() => TapController());
  }
}
