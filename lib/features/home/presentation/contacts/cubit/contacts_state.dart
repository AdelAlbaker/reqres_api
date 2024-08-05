part of 'contacts_cubit.dart';

enum ContactsStatus { init, loading, success, error }
class ContactsState extends Equatable {
  final ContactsStatus contactsStatus;
  final List<UserEntity> list;
  final String contactsStatusMessage;


  const ContactsState({
    this.contactsStatus = ContactsStatus.init,
    this.list = const[],
    this.contactsStatusMessage = '',

  });

  ContactsState copyWith({
    ContactsStatus? contactsStatus,
    List<UserEntity>? list,
    String? contactsStatusMessage,
  }) {
    return ContactsState(
      contactsStatus: contactsStatus ?? this.contactsStatus,
      list: list ?? this.list,
      contactsStatusMessage: contactsStatusMessage ??
          this.contactsStatusMessage,
    );
  }

  @override
  List<Object> get props => [contactsStatus, list, contactsStatusMessage];
}

class ContactsInitial extends ContactsState {
  /// {@macro contacts_initial}
  const ContactsInitial() : super();
}
