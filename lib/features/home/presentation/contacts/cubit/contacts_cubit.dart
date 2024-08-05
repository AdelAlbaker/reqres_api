import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_users_usecase.dart';
part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  final GetUsersUseCase getUsersUseCase;
  bool isLoadingMore=false;
   int page=1;
  List<UserEntity> list=[];
  ContactsCubit(this.getUsersUseCase) : super(const ContactsInitial()){
    init();
  }

  /// A description for yourCustomFunction 
  FutureOr<void> init() async{
    //emit(state.copyWith(contactsStatus: ContactsStatus.loading));
    final result = await getUsersUseCase.baseUserRepository.getUsers(GetUsersParameter(page));

    result.fold((l)
        =>
            emit(
                state.copyWith(
                contactsStatus: ContactsStatus.error,
                contactsStatusMessage: l.message,
            ))
        , (r)
      {
      list=list+r;
      emit(
        state.copyWith(
        list: list,
        contactsStatus: ContactsStatus.success,
      ));
      page++;
      isLoadingMore=false;
      }
    );
  }
}
