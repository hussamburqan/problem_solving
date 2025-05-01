import 'package:problem_solving/strings/anagram_check/anagram_check.dart';
import 'package:test/test.dart';

void main() {
  group('Manual Implementation Tests', () {
    test('areAnagramsManual', () {
      expect(areAnagramsManual("racecar", "carrace"), true);
      expect(areAnagramsManual("listen", "silent"), true);
      expect(areAnagramsManual("hello", "bello"), false);
      expect(areAnagramsManual("abc", "def"), false);
      expect(areAnagramsManual("", ""), true);
      expect(areAnagramsManual("a", "a"), true);
      expect(areAnagramsManual("ab", "ba"), true);
    });
  });

  group('Built-in Implementation Tests', () {
    test('areAnagramsBuiltIn', () {
      expect(areAnagramsBuiltIn("racecar", "carrace"), true);
      expect(areAnagramsBuiltIn("listen", "silent"), true);
      expect(areAnagramsBuiltIn("hello", "bello"), false);
      expect(areAnagramsBuiltIn("abc", "def"), false);
      expect(areAnagramsBuiltIn("", ""), true);
      expect(areAnagramsBuiltIn("a", "a"), true);
      expect(areAnagramsBuiltIn("ab", "ba"), true);
    });
  });
}
