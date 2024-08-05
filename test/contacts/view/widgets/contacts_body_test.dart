// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reqres_api/features/home/presentation/contacts/contacts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactsBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => ContactsCubit(),
          child: MaterialApp(home: ContactsBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
