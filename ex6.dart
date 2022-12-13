void main(List<String> args) {
  numbersFibonacci(4 );

}

List<int> numbersFibonacci(int n) {
  List<int> fibList = [0, 1];
  for (var i = 0; i < n; i++) {
    fibList.add(fibList[i] + fibList[i + 1]);
  }

  print(fibList);
  return fibList;
}

