import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:time_manager_core/entity/user_entity.dart';

part 'backend_client.g.dart';

@RestApi(baseUrl: null)
abstract class BackendClient {
  factory BackendClient(Dio dio, {String? baseUrl}) = _BackendClient;

  @POST("/auth")
  Future<UserEntity> signIn(@Path("id") String id);

  @PUT("/auth")
  Future<UserEntity> refreshToken();

  @DELETE("/auth")
  Future<HttpResponse> signOut();

  @POST("/user")
  Future<UserEntity> createUser();

  @PUT("/user")
  Future<UserEntity> updateUser();

  @GET("/user/{id}")
  Future<UserEntity> getUser(@Path("id") String id);
}
