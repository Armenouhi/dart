import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  rememberedNumber(47);
}

rememberedNumber(int memorizedNumber) {
  int count = 0;
  if (memorizedNumber < 0 || memorizedNumber > 100) {
    memorizedNumber = Random().nextInt(100);
  }
  print(memorizedNumber);

  while (true) {
    stdout.write("Please enter the number: ");
    String? n = stdin.readLineSync();
    int? number = int.tryParse(n!);
    print(number);

    if (number != memorizedNumber) {
      count++;
    } else {
      print(count);
      return count;
    }
  }
  
}
