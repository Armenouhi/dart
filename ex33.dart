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
  int index = numbers.length - 1;

  print(arithmeticOperation[index]);

  num result = 0;

  if (x == null) {
    x = 0;
  } else {
    result = x;
  }

  while (true) {
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
        arithmeticOperation[index] = '+';
        result = 0;
        break;
    }

    var write = arithmeticOperation[index] != '='
        ? stdout.write('Enter operation ')
        : '';
    String? operation =
        arithmeticOperation[index] != '=' ? stdin.readLineSync() : ' <-- enter';

    if (arithmeticOperation[index] != '=') {
      write;
      operation;

      arithmeticOperation.add(operation!);
      print(arithmeticOperation[index]);

      stdout.write('$result $operation');
      String y = stdin.readLineSync()!;
      numbers.add(num.tryParse(y)!);
    } else {
      stdout.write('Click Enter or write "AC"');
      print(result);

      String? ac = stdin.readLineSync();

      if (ac != null) {
        if (ac == 'AC') {
          result = 0;
          print(result);
          return result;
        } else {
          print(result);
          return result;
        }
      }
    }

    index += 1;
  }
}
