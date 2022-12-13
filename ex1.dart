import 'dart:io';

void main() {
  countYears(stdin.readLineSync(), int.parse(stdin.readLineSync()!));
}

void countYears(String? name, int age) {
  stdout.write("What's your name? ");
  stdout.write("Hello ${name} ");
  // print("The entered name is ${name}");
  stdout.write("How old are you? ");
  stdout.write(100 - age);
  // print(100 - age);
}
