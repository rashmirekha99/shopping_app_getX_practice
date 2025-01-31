import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_app_getx_practice/model/product.dart';

part 'remote_services.g.dart';

class Apis {
  static const String products = 'products';
}

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class RemoteServices {
  factory RemoteServices(Dio dio, {String baseUrl}) = _RemoteServices;

  @GET(Apis.products)
  Future<List<Product>> fetchProducts();
}
