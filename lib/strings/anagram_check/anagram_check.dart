import 'dart:io';

bool areAnagramsManual(String word1, String word2) {
  if (word1.length != word2.length) return false;

  Map<String, int> freq = {};

  for (int i = 0; i < word1.length; i++) {
    String char = word1[i];
    freq[char] = (freq[char] ?? 0) + 1;
  }

  for (int i = 0; i < word2.length; i++) {
    String char = word2[i];
    if (freq[char] == null || freq[char] == 0) return false;
    freq[char] = freq[char]! - 1;
  }

  return true;
}



bool areAnagramsBuiltIn(String word1, String word2) {
  if (word1.length != word2.length) return false;

  List<String> list1 = word1.split('')..sort();
  List<String> list2 = word2.split('')..sort();

  return list1.join() == list2.join();
}

void main() {
  stdout.write("Enter first string: ");
  String word1 = stdin.readLineSync()!.trim();

  stdout.write("Enter second string: ");
  String word2 = stdin.readLineSync()!.trim();  

  print("\n[Manual] Are Anagrams: ${areAnagramsManual(word1, word2)}");
  print("[Built-in] Are Anagrams: ${areAnagramsBuiltIn(word1, word2)}");

}