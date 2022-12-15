void main(List<String> args) {
  List<int> list = [6, 2, 3, 8];
  int count = 0;
  int temp = 0;
  var i = 0;
  int diff = 0;

  list = list..sort();
  print(list);

  while (i < list.length - 1) {
    temp = list[i];

    diff = list[i + 1] - temp;

    while (diff > 1) {
      count += 1;
      temp += 1;
      diff = list[i + 1] - temp;
      print(temp);
    }

    i++;
  }

  print('count: $count');
}
