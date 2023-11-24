import 'package:dio/dio.dart';
import 'package:habitat/model/cat/cat.dart';
import 'package:retrofit/retrofit.dart';

part 'cat_api.g.dart';

@RestApi(baseUrl: 'https://cat-fact.herokuapp.com')
abstract class CatRestClient {
  factory CatRestClient(Dio dio, {String baseUrl}) = _CatRestClient;

  @GET('/facts')
  Future<List<CatFact>> getFacts();
}
