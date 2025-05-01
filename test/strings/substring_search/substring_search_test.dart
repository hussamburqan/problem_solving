
import 'package:problem_solving/strings/substring%20search/substring_search.dart';
import 'package:test/test.dart';

void main() {
  group('Manual Implementation Tests', () {
    test('containsSubstringManual', () {
      expect(containsSubstringManual("banana", "ana"), true);
      expect(containsSubstringManual("banana", "apple"), false);
    });

    test('firstOccurrenceManual', () {
      expect(firstOccurrenceManual("banana", "ana"), 1);
      expect(firstOccurrenceManual("banana", "nana"), 2);
      expect(firstOccurrenceManual("banana", "apple"), -1);
    });

    test('allOccurrencesManual', () {
      expect(allOccurrencesManual("banana", "ana"), [1, 3]);
      expect(allOccurrencesManual("banana", "ba"), [0]);
      expect(allOccurrencesManual("banana", "z"), []);
    });
  });

  group('Built-in Implementation Tests', () {
    test('containsSubstringBuiltIn', () {
      expect("banana".contains("ana"), true);
      expect("banana".contains("apple"), false);
    });

    test('firstOccurrenceBuiltIn', () {
      expect("banana".indexOf("ana"), 1);
      expect("banana".indexOf("nana"), 2);
      expect("banana".indexOf("apple"), -1);
    });

    test('allOccurrencesBuiltIn', () {
      expect(allOccurrencesBuiltIn("banana", "ana"), [1, 3]);
      expect(allOccurrencesBuiltIn("banana", "ba"), [0]);
      expect(allOccurrencesBuiltIn("banana", "z"), []);
    });
  });
}