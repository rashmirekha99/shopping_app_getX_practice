import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shopping_app_getx_practice/model/product.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';
import 'package:shopping_app_getx_practice/services/remote_services.dart';

class ProductController extends GetxController {
  var loading = true.obs;
  RxList _productList = <Product>[].obs;
  RxList _cartIndexList = <int>[].obs;
  RxList get productList => _productList;
  RxList get cartIndexList => _cartIndexList;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    loading(true);
    try {
      final client =
          RemoteServices(Dio(BaseOptions(contentType: 'application/json')));
      var products = await client.fetchProducts();
      print(products);

      _productList.value = products;
    } finally {
      loading(false);
    }
  }

  void addToCart(int index) {
    _cartIndexList.add(index);
  }

  void deleteFromCart(int index) {
    _cartIndexList.removeAt(index);
  }
}
