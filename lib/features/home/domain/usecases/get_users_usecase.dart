import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:reqres_api/core/error/faliure.dart';
import 'package:reqres_api/core/usecase/base_usecase.dart';
import 'package:reqres_api/features/home/domain/entities/user_entity.dart';
import 'package:reqres_api/features/home/domain/repositories/base_user_repository.dart';

class GetUsersUseCase extends BaseUseCase<List<UserEntity>, GetUsersParameter> {

  final BaseUserRepository baseUserRepository;

  GetUsersUseCase(this.baseUserRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(GetUsersParameter parameters) async {
    return await baseUserRepository.getUsers(parameters);
  }

}

class GetUsersParameter extends Equatable {
  final int page;

  const GetUsersParameter(this.page);

  @override
  List<Object> get props => [page];
}