import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maccabi/data/remote/repositories/product_repository.dart';
import 'package:maccabi/stores/product_store.dart';

import '../services/http/http_client.dart';

final sl = GetIt.I;

void setupLocator(String baseUrl) async {
  // singletons:--------------------------------------------
  sl.registerSingleton(ApiService(Dio(BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 30 * 1000,
      // 30 seconds
      receiveTimeout: 30 * 1000,
      //30 seconds
      validateStatus: (status) {
        return status! < 500;
      }))));

  // repos:----------------
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImp());

  //stores:---------------
  sl.registerLazySingleton<ProductStore>(() => ProductStore());
}

