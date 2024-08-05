import 'package:flutter/material.dart';
import 'package:reqres_api/features/home/data/datasources/user_remote_data_source.dart';
import 'package:reqres_api/features/home/domain/usecases/get_user_by_id_usecase.dart';
import 'package:reqres_api/features/home/domain/usecases/get_users_usecase.dart';

import 'core/services/services_locator.dart';
import 'features/home/presentation/contacts/view/contacts_page.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContactsPage(),
    );
  }
}
