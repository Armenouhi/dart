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
  String operation = stdin.readLineSync()!;

  if (operation == '+' ||
      operation == '-' ||
      operation == '*' ||
      operation == '/' ||
      operation == '%' ||
      operation == '=') {
    arithmeticOperation.add(operation);
  } else {
    operation = '+';
    arithmeticOperation.add(operation);
  }

  stdout.write('$firstNumber $operation ');
  String y = stdin.readLineSync()!;
  numbers.add(num.tryParse(y));

  num? x = num.tryParse(firstNumber);
  int index = numbers.length - 1;

  num result = 0;

  if (x == null) {
    x = 0;
  } else {
    result = x;
  }

  while (true) {
    switch (arithmeticOperation[index]) {
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
        result = result + numbers[index]!;
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

      if (operation == '+' ||
          operation == '-' ||
          operation == '*' ||
          operation == '/' ||
          operation == '%' ||
          operation == '=') {
        arithmeticOperation.add(operation);
      } else {
        operation = '+';
        arithmeticOperation.add(operation);
      }

      stdout.write('$result $operation');
      String y = stdin.readLineSync()!;
      numbers.add(num.tryParse(y)!);
    } else {
      print(operation);
      stdout.write('Click /    <--     enter    / or write "AC"');

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
