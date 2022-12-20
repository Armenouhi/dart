void main(List<String> args) {
  List<int> list = [8,  19, 13, 11, 15];
  list = list..sort();
  int first = list.first;
  int last = list.last;
  print(last);
  int length = list.length;
  print(length);

  int count = last - first - (length-1);
  print('count: $count');
}
