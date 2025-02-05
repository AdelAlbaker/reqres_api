// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reqres_api/features/home/presentation/contacts/cubit/cubit.dart';

void main() {
  group('ContactsCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          ContactsCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final contactsCubit = ContactsCubit();
      expect(contactsCubit.state.customProperty, equals('Default Value'));
    });

    blocTest<ContactsCubit, ContactsState>(
      'yourCustomFunction emits nothing',
      build: ContactsCubit.new,
      act: (cubit) => cubit.yourCustomFunction(),
      expect: () => <ContactsState>[],
    );
  });
}
