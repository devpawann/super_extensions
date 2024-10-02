import 'package:flutter_test/flutter_test.dart';
import 'package:super_extensions/super_extensions.dart';

void main() {
  group(
    'String-extension tests',
    () {
      test(
        'Ensure only the first character of a string is capitalized',
        () {
          // ensure empty string returns empty
          final text0 = ''.capitaliseFirstChar;
          expect(text0.isEmpty, true);

          // operation on single word
          final text1 = 'test'.capitaliseFirstChar;
          expect(text1, 'Test');

          // operation on a group of words/sentence
          final text2 = 'hello world'.capitaliseFirstChar;
          expect(text2, 'Hello world');

          // returns back capitalized string
          final text3 = 'Test'.capitaliseFirstChar;
          expect(text3, 'Test');
        },
      );

      test(
        'Ensure first letter of a group of string(s), also known as sentences, are capitalized',
        () {
          // ensure empty string returns empty
          final text0 = ''.capitaliseFirstChar;
          expect(text0.isEmpty, true);

          // operation on single word
          final text1 = 'test'.capitaliseEachWordFirstChar;
          expect(text1, 'Test');

          // operation on a group of words/sentence
          final text2 = 'hello world'.capitaliseEachWordFirstChar;
          expect(text2, 'Hello World');

          // returns back capitalized string
          final text3 = 'Hello   World'.capitaliseEachWordFirstChar;
          expect(text3, 'Hello World');
        },
      );

      test(
        'Ensure valid emails are valid',
        () {
          const email0 = 'test@gmail.com';
          expect(email0.isValidEmail(), true);

          const email1 = 'test.1234@test.co';
          expect(email1.isValidEmail(), true);
        },
      );

      test(
        'Ensure strings are reversed',
        () {
          const string0 = 'Hello world.';
          expect(string0.reversed, '.dlrow olleH');

          const string1 = 'jUsT a raN  dom teXT';
          expect(string1.reversed, 'TXet mod  Nar a TsUj');
        },
      );

      test(
        'Ensure appropriate initials from strings',
        () {
          const text0 = 'first test ';
          expect(text0.getInitials, 'ft');

          const text1 = 'John Harry Doe';
          expect(text1.getInitials, 'JHD');

          const text2 = 'John';
          expect(text2.getInitials, 'J');
        },
      );

      test('Ensure valid palindromes returned correct', () {
        // palindrome check on empty string
        final isPalindrome0 = ''.isPalindrome;
        // An empty string is also a palindrome, since it "reads" the same forward and backward.
        expect(isPalindrome0, true);

        // palindrome check on odd number of characters
        final isPalindrome1 = 'abcba'.isPalindrome;
        expect(isPalindrome1, true);

        // palindrome check on even number of characters
        final isPalindrome2 = 'abccba'.isPalindrome;
        expect(isPalindrome2, true);
      });

      test('Ensure non valid palindromes returned correct', () {
        final isPalindrome0 = 'abcd'.isPalindrome;
        expect(isPalindrome0, false);
      });
    },
  );

  group(
    'Number-extension tests',
    () {
      test(
        'Ensure the height sizing of the SizedBox returned are correct',
        () {
          final box0 = 50.hSizedBox;
          expect(box0.height, 50.0);
          expect(box0.width, null);
        },
      );

      test(
        'Ensure the width sizing of the SizedBox returned are correct',
        () {
          final box0 = 50.wSizedBox;
          expect(box0.width, 50.0);
          expect(box0.height, null);
        },
      );
      test(
        'Ensure the edgeInsetAll returns correct uniform edgeInsets',
        () {
          final inset = 20.edgeInsetAll;
          expect(inset.left, 20.0);
          expect(inset.top, 20.0);
          expect(inset.right, 20.0);
          expect(inset.bottom, 20.0);
        },
      );

      test(
        'Ensure the edgeInsetHorizontal returns correct horizontal edgeInsets',
        () {
          final inset = 30.edgeInsetHorizontal;
          expect(inset.left, 30.0);
          expect(inset.right, 30.0);
          expect(inset.top, 0.0);
          expect(inset.bottom, 0.0);
        },
      );

      test(
        'Ensure the edgeInsetVertical returns correct vertical edgeInsets',
        () {
          final inset = 15.edgeInsetVertical;
          expect(inset.top, 15.0);
          expect(inset.bottom, 15.0);
          expect(inset.left, 0.0);
          expect(inset.right, 0.0);
        },
      );
    },
  );
}
