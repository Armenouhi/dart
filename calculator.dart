import 'dart:io';

void main(List<String> args) {
  onCalculate();
}

final regExp = RegExp(r'^[0-9]+$');
num onCalculate() {
  List<String?> arithmeticOperation = [];
  List<num?> numbers = [];
  stdout.write('0 ');
  String firstNumber = stdin.readLineSync()!;

  stdout.write('Enter operation ');
  String operation = stdin.readLineSync()!;

  if (regExp.hasMatch(firstNumber) == false) {
    firstNumber = '0';
  }

  checkOperationType(operation, arithmeticOperation);

  stdout.write('$firstNumber $operation ');
  String? y;
  addNumbers(y, numbers);

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

      checkOperationType(operation, arithmeticOperation);

      stdout.write('$result $operation');
      String? y;
      addNumbers(y, numbers);
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

List<String?> checkOperationType(
    String? operation, List<String?> arithmeticOperation) {
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

  return arithmeticOperation;
}

List<num?> addNumbers(String? y, List<num?> numbers) {
  try {
    y = stdin.readLineSync() ?? stdin.readLineSync()!;
    if (regExp.hasMatch(y) == false) {
      y = '0';
    }
    numbers.add(num.tryParse(y));
  } catch (e) {
    y = '0';
    print('It can\'t be null');
  }

  return numbers;
}
