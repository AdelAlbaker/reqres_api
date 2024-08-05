// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:reqres_api/features/home/presentation/contacts/cubit/cubit.dart';

void main() {
  group('ContactsState', () {
    test('supports value equality', () {
      expect(
        ContactsState(),
        equals(
          const ContactsState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const ContactsState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const contactsState = ContactsState(
            customProperty: 'My property',
          );
          expect(
            contactsState.copyWith(),
            equals(contactsState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const contactsState = ContactsState(
            customProperty: 'My property',
          );
          final otherContactsState = ContactsState(
            customProperty: 'My property 2',
          );
          expect(contactsState, isNot(equals(otherContactsState)));

          expect(
            contactsState.copyWith(
              customProperty: otherContactsState.customProperty,
            ),
            equals(otherContactsState),
          );
        },
      );
    });
  });
}
