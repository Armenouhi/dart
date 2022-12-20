import 'dart:math';

void main(List<String> args) {
  int n = Random().nextInt(100);
  if (n < 10) {
    n = 47;
  }

  String number = n.toString();

  String result = '';

  for (var i = 0; i < number.length; i++) {
    result = number[i] + ' ';
    result += result;
  }
  print(result);
}
