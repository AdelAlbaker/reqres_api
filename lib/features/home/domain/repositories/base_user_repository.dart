

import 'package:dartz/dartz.dart';
import 'package:reqres_api/core/error/faliure.dart';
import 'package:reqres_api/features/home/domain/entities/user_entity.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../usecases/get_user_by_id_usecase.dart';
import '../usecases/get_users_usecase.dart';

abstract class BaseUserRepository {

  Future<Either<Failure,UserEntity>> getUserById(UserIdParameter parameters);

  Future<Either<Failure,List<UserEntity>>> getUsers(GetUsersParameter parameters);

}