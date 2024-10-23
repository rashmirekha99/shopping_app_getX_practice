import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/model/product.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';

class ProductController extends GetxController {
  RxList productList = <Product>[].obs;
  RxList cartIndexList = <int>[].obs;

  

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

  void addToCart(int index) {
    cartIndexList.add(index);
  }

  void deleteFromCart(int index) {
    cartIndexList.removeAt(index);
  }
}
