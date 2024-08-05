import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:reqres_api/core/error/faliure.dart';
import 'package:reqres_api/core/usecase/base_usecase.dart';
import 'package:reqres_api/features/home/domain/entities/user_entity.dart';
import 'package:reqres_api/features/home/domain/repositories/base_user_repository.dart';

class GetUserByIdUseCase extends BaseUseCase<UserEntity,UserIdParameter> {

  final BaseUserRepository baseUserRepository;

  GetUserByIdUseCase(this.baseUserRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UserIdParameter parameters)async {
    // TODO: implement call
    return await baseUserRepository.getUserById(parameters);
  }

}

class UserIdParameter extends Equatable {
  final int id;

  const UserIdParameter({required this.id});

  @override
  List<Object> get props => [id];


}