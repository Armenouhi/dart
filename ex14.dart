import 'dart:io';

void main(List<String> args) {
  stdout.write("Please give a sentence: ");
  String? sentence = stdin.readLineSync();
  reverceString(sentence!);
}

reverceString(String sentence) {
  String str = sentence.split(' ').reversed.join();
  print(str);
}
