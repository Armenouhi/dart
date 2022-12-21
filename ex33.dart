import 'dart:io';

void main(List<String> args) {
  onCalculate();
}

num onCalculate() {
  List<String?> arithmeticOperation = [];
  List<num?> numbers = [];
  stdout.write('0 ');
  String firstNumber = stdin.readLineSync()!;

  stdout.write('Enter operation ');
  String? operation = stdin.readLineSync();
  arithmeticOperation.add(operation);
  stdout.write('$firstNumber $operation ');
  String y = stdin.readLineSync()!;
  numbers.add(num.tryParse(y));

  num? x = num.tryParse(firstNumber);
  print(firstNumber);
  print(numbers);
  int index = numbers.length - 1;

  print(arithmeticOperation[index]);
  print(numbers[index]);

  num result = 0;

  if (x == null) {
    x = 0;
  } else {
    result = x;
  }

  print(result);

  while (arithmeticOperation[arithmeticOperation.length - 1] != '=') {
    switch (arithmeticOperation[index]) {
      case '+':
        result = result + numbers[index]!;
        break;

      case '-':
        result = result - numbers[index]!;
        break;

      case '*':
        result = result * numbers[index]!;
        break;

      case '/':
        result = result / numbers[index]!;
        break;

      case '%':
        result = result % numbers[index]!;
        break;

      case '=':
        result = result;
        break;

      default:
        result = 0;
        break;
    }

    stdout.write('Enter operation ');
    String? operation = stdin.readLineSync();
    arithmeticOperation.add(operation!);

    stdout.write('$result $operation');
    String y = stdin.readLineSync()!;
    numbers.add(num.tryParse(y)!);

    index += 1;
  }

  stdout.write('0 ');
  String? ac = stdin.readLineSync();

  if (ac != null || ac != '') {
    if (ac == 'AC') {
      result = 0;
      print(result);
    }
  }

  return result;
}
