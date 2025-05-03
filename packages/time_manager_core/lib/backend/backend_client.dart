import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'backend_client.g.dart';

@RestApi(baseUrl: null)
abstract class BackendClient {
  factory BackendClient(Dio dio, {String? baseUrl}) = _BackendClient;
}
