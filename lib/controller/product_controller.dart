import 'package:get/get.dart';
import 'package:home_garden/model/product.dart';
import 'package:home_garden/services/remote_services.dart';

class ProductController extends GetxController {
  RxList productList = <Product>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    print(products);
    if (products != null) {
      productList.value = products;
    }
  }
}
