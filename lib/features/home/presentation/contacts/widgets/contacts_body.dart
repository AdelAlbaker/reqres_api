import 'package:flutter/material.dart';
import 'package:reqres_api/features/home/presentation/contacts/cubit/cubit.dart';

import 'contact_item.dart';

/// {@template contacts_body}
/// Body of the ContactsPage.
///
/// Add what it does
/// {@endtemplate}
class ContactsBody extends StatelessWidget {
  final ScrollController scrollController = ScrollController();

  /// {@macro contacts_body}
   ContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsCubit, ContactsState>(
      builder: (context, state) {
        if(state.contactsStatus==ContactsStatus.loading){
          return const CircularProgressIndicator();
        }
        if(state.contactsStatus==ContactsStatus.error){
          return const Center(child: Text("ERROR"));
        }
        if(state.contactsStatus==ContactsStatus.success){
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  //ToDo: Make the height responsive :)
                  height: 560,
                  child: ListView.builder(
                    itemCount: state.list.length,
                    shrinkWrap: true,
                    controller:scrollController..addListener((){
                      if(scrollController.offset==
                          scrollController.position.maxScrollExtent
                          && !context.read<ContactsCubit>().isLoadingMore
                      ){
                        context.read<ContactsCubit>().isLoadingMore=true;
                        context.read<ContactsCubit>().init();
                      }
                    }),
                    itemBuilder: (context,index){
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ContactItem(
                                imageUrl: '${state.list[index].avatar}',
                                firstName: '${state.list[index].firstName}',
                              )),
                            );
                          },
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                              "${state.list[index].avatar}"
                                          ),
                                        ),

                                        const Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Icon(
                                                Icons.monetization_on,
                                                size: 10.0,
                                                color: Colors.green
                                            ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Text("${state.list[index].firstName} ${state.list[index].lastName} "),
                                        Text("${state.list[index].lastName}"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            floatingActionButton: Container(

              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(60),
              ),
              child: IconButton(

                onPressed: (){},

                icon: const Icon(
                  shadows: [
                    BoxShadow(color: Colors.blue)
                  ],
                    Icons.add,
                    size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        }
        else{
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
