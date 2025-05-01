import 'dart:io';

bool containsSubstringManual(String sentence, String word) {
  return firstOccurrenceManual(sentence, word) != -1;
}

int firstOccurrenceManual(String sentence, String word) {

  for (int i = 0; i <= sentence.length - word.length; i++) {
    int j;
    for (j = 0; j < word.length; j++) {
      if (sentence[i + j] != word[j]) {
        break;
      }
    }
    if (j == word.length) {
      return i; 
    }
  }
  return -1;
}

List<int> allOccurrencesManual(String sentence, String word) {
  List<int> occurrences = [];
  
  for (int i = 0; i <= sentence.length - word.length; i++) {
    int j;
    for (j = 0; j < word.length; j++) {
      if (sentence[i + j] != word[j]) {
        break;
      }
    }
    if (j == word.length) {
      occurrences.add(i);
    }
  }
  return occurrences;
}

// built in 
List<int> allOccurrencesBuiltIn(String sentence, String word) {
  List<int> occurrences = [];
  int index = sentence.indexOf(word);
  while (index != -1) {
    occurrences.add(index);
    index = sentence.indexOf(word, index + 1);
  }
  return occurrences;
}

void main() {
  stdout.write('Enter main string: ');
  String sentence = stdin.readLineSync() ?? '';

  stdout.write('Enter substring: ');
  String word = stdin.readLineSync() ?? '';

  print('\n[Manual]');
  print('Contains: ${containsSubstringManual(sentence, word)}');
  print('First occurrence index: ${firstOccurrenceManual(sentence, word)}');
  print('All occurrences: ${allOccurrencesManual(sentence, word)}');

  print('\n[Built-in]');
  print('Contains: ${sentence.contains(word)}');
  print('First occurrence index: ${sentence.indexOf(word)}');
  print('All occurrences: ${allOccurrencesBuiltIn(sentence, word)}');
}
