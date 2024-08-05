// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reqres_api/features/home/presentation/contacts/contacts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactsPage', () {
    group('route', () {
      test('is routable', () {
        expect(ContactsPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders ContactsView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ContactsPage()));
      expect(find.byType(ContactsView), findsOneWidget);
    });
  });
}
