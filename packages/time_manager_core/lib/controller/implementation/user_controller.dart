import 'package:fpdart/src/either.dart';
import 'package:time_manager_core/controller/_controllers.dart';
import 'package:time_manager_core/entity/access_entity.dart';
import 'package:time_manager_core/entity/user_entity.dart';
import 'package:time_manager_core/error/khiomis_error.dart';

class UserController extends IUserController {
  @override
  Future<Either<UserEntity, KhiomisError>> get(String id) async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Either<AccessEntity, KhiomisError>> signIn() async {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<bool, KhiomisError>> signOut() async {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<UserEntity, KhiomisError>> update(String id, content) async {
    // TODO: implement update
    throw UnimplementedError();
  }
}
