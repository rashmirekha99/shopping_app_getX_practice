import 'package:get/get.dart';
import 'package:home_garden/model/product.dart';
import 'package:home_garden/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
  }
}
