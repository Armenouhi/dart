void main(List<String> args) {
  matchstick_model(4);
}

matchstick_model(int n) {
  int result = n * 12 - (n - 1) * 4;
  print(result);
  return result;
}
