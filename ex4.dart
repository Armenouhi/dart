void main(List<String> args) {
  onPrimeNumber(15);
}

void onPrimeNumber(int n) {
  String message = '';
  for (var i = 2; i < n / 2; i++) {
    if (n % i != 0 && n != 2) {
      message = 'The number is not prime';
    } else {
      message = 'The number is prime';
      break;
    }
  }
  print(message);
}
