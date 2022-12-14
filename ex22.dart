import 'dart:io';

void main(List<String> args) {

  print(maxValue());
}

maxValue() {
  int max = 0;
  stdout.write("Please enter the first number: ");
  String? xS = stdin.readLineSync();
  int? x = int.tryParse(xS!);
  stdout.write("Please enter the second number: ");
  String? yS = stdin.readLineSync();
  int? y = int.tryParse(yS!);
  stdout.write("Please enter the third number: ");
  String? zS = stdin.readLineSync();
  int? z = int.tryParse(zS!);

  if (x! > y! && x > z!) {
    max = x;
  } else if (y > x && y > z!) {
    max = y;
  } else {
    max = z!;
  }

  return max;
}
