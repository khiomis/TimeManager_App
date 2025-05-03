import 'package:fpdart/fpdart.dart' show Either;
import 'package:time_manager_core/entity/access_entity.dart';
import 'package:time_manager_core/entity/user_entity.dart';
import 'package:time_manager_core/error/khiomis_error.dart';

abstract class IUserController {
  Future<Either<AccessEntity, KhiomisError>> signIn();
  Future<Either<bool, KhiomisError>> signOut();
  Future<Either<UserEntity, KhiomisError>> get(String id);
  Future<Either<UserEntity, KhiomisError>> update(String id, dynamic content);
}