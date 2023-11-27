import 'package:dio/dio.dart';
import 'package:habitat/features/apiexample/cubit/cat_api.dart';
import 'package:habitat/infra/initializer/initializer.dart';
import 'package:habitat/infra/servicelocator/service_locator.dart';

class NetworkClientModule with AppInitializer {
  static final Dio _dio = Dio();

  @override
  void init() {
    ServiceLocator.registerLazySingleton(() => _dio);
    ServiceLocator.registerLazySingleton(() => CatRestClient(_dio));
  }
}
