import 'package:get_it/get_it.dart';
import 'package:reqres_api/features/home/domain/usecases/get_users_usecase.dart';

import '../../features/home/data/datasources/user_remote_data_source.dart';
import '../../features/home/data/repositories/user_repository.dart';
import '../../features/home/domain/repositories/base_user_repository.dart';
import '../../features/home/presentation/contacts/cubit/contacts_cubit.dart';

final GetIt sl=GetIt.instance;

class ServicesLocator{

  void init(){

    /// Bloc
    sl.registerFactory(()=>ContactsCubit(sl()));



    /// UseCase
    sl.registerLazySingleton(() => GetUsersUseCase(sl()));


    /// Repository
    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(sl()));


    /// Data source
    sl.registerLazySingleton<BasesUserRemoteDataSource>(() => UserRemoteDataSource());


    ///
  }
}