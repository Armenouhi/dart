import 'dart:math';

void main(List<String> args) {
  final random = Random();

  List<int> randList = List.generate(10, (index) => random.nextInt(100));
  print(randList);

  print(newList(randList));
}

List<int> newList(List<int> initialList) {
  return [initialList.first, initialList.last];
}
