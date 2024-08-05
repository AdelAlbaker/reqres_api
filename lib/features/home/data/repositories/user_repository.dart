import 'package:dartz/dartz.dart';
import 'package:reqres_api/core/error/faliure.dart';
import 'package:reqres_api/features/home/data/datasources/user_remote_data_source.dart';
import 'package:reqres_api/features/home/domain/entities/user_entity.dart';
import 'package:reqres_api/features/home/domain/repositories/base_user_repository.dart';
import 'package:reqres_api/features/home/domain/usecases/get_user_by_id_usecase.dart';

import '../../domain/usecases/get_users_usecase.dart';

class UserRepository extends BaseUserRepository{

  final BasesUserRemoteDataSource basesUserRemoteDataSource;

  UserRepository(this.basesUserRemoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> getUserById(UserIdParameter parameters) async {
    final result= await basesUserRemoteDataSource.getUserById(parameters);

    try{
      return Right(result);
    }on ServerFailure catch(failure){
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(GetUsersParameter parameters)async {
    final result= await basesUserRemoteDataSource.getUsers(parameters);

    try{
      return Right(result);
    }on ServerFailure catch(failure){
      return Left(ServerFailure(failure.message));
    }
  }


}