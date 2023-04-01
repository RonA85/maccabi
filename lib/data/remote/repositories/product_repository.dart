import 'package:dio/dio.dart';

import 'package:maccabi/data/entities/product.dart';


import '../../../locator.dart';
import '../../../services/http/constants.dart';
import '../../../services/http/http_client.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProducts();

}

class ProductRepositoryImp implements ProductRepository {

  ApiService apiService = sl<ApiService>();

  @override
  Future<List<Product>> fetchProducts() async {
    try {
      final response = await apiService.get(Apis.products);
      return (response.data['products'] as List).map((e) => Product.fromJson(e)).toList();
    } on DioError catch (e) {
      return [];
    }
  }

}
