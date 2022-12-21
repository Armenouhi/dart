import 'dart:io';

void main(List<String> args) {
  stdout.write('0 ');
  String x = stdin.readLineSync()!;

  stdout.write('Enter operation ');
  String? operation = stdin.readLineSync();
  stdout.write('$x $operation ');
  String y = stdin.readLineSync()!;

  onCalculate(num.tryParse(x), num.tryParse(y), operation);
}

num onCalculate(num? x, num? y, String? arithmeticOperation) {
  print(x);
  print(y);

  num operation = 0;

  if (x == null) {
    x = 0;
  }
  if (y == null) {
    y = 0;
  }

  switch (arithmeticOperation) {
    case '+':
      operation = x + y;
      break;

    case '-':
      operation = x - y;
      break;

    case '*':
      operation = x * y;
      break;

    case '/':
      operation = x / y;
      break;

    case '%':
      operation = x % y;
      break;

    default:
      operation = 0;
      break;
  }

  print(operation);

  stdout.write('0 ');
  String? ac = stdin.readLineSync();

  if (ac != '' || ac != null) {
    if (ac == 'AC') {
      operation = 0;
      print(operation);
    } else {
      if (ac == '=') {
        operation = operation;
        print(operation);
      } 
    }
  }

  return operation;
}
