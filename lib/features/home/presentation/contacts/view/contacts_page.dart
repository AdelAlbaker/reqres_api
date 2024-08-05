import 'package:flutter/material.dart';
import 'package:reqres_api/features/home/domain/usecases/get_users_usecase.dart';
import 'package:reqres_api/features/home/presentation/contacts/cubit/cubit.dart';
import 'package:reqres_api/features/home/presentation/contacts/widgets/contacts_body.dart';

import '../../../../../core/services/services_locator.dart';

/// {@template contacts_page}
/// A description for ContactsPage
/// {@endtemplate}
class ContactsPage extends StatelessWidget {
  /// {@macro contacts_page}
  const ContactsPage({super.key});

  /// The static route for ContactsPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) =>  ContactsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ContactsCubit(
            sl<GetUsersUseCase>(),
          ),
      child:  Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.list),
          ),
          title: const Text("Contacts"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        body: ContactsView(),
      ),
    );
  }
}

/// {@template contacts_view}
/// Displays the Body of ContactsView
/// {@endtemplate}
class ContactsView extends StatelessWidget {
  /// {@macro contacts_view}
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactsCubit, ContactsState>(
      listener: (context, state) {
        if(state.contactsStatus==ContactsStatus.init){
          print("INIT STATE");
        }
        if(state.contactsStatus==ContactsStatus.loading){
          print("loading STATE");

        }
        if(state.contactsStatus==ContactsStatus.error){
          print("error STATE");

        }
        if(state.contactsStatus==ContactsStatus.success){
          print("success STATE");

        }

      },
      child: ContactsBody(),
    );
  }
}
