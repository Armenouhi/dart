void main(List<String> args) {
  List<int> list = [
    // 77,
    // 74,
    // 70,
    // 69,
    // 65,
    // 62,
    // 62,
    // 57,
    // 54,
    // 47,
    // 44,
    // 47,     
    // 40,
    // 29,
    // 25,
    // 22,
    // 17,
    // 14,
    // 5,
    // 10
    11, 4, 5, 14, 9, 17, 47
  ];
  print(isSortedList(list));

}

bool? isSortedList(List<int> list) {
  int length = list.length;
  List<int> newList = [];
  bool? result;
  int count = 0;
  for (var i = 0; i < (length); i++) {
    newList.add(list[i]);
  }

  if ((newList[0] > newList[1] && newList[length - 2] > newList[length - 1]) 
      || (newList[0] > newList[1] && newList[(length/2).round()-1] > newList[(length/2).round()])
      || (newList[(length/2).round()-1] > newList[(length/2).round()] && newList[length - 2] > newList[length - 1])) {
    newList = newList.reversed.toList();
  }

  length = newList.length;
  int i = 0;
  int n = newList[0];

  while (i < length) {
    list = List.generate(1, (index) => newList[i]);

    if (n <= list[0]) {
      count += 0;
    } else {
      count += 1;
    }

    n = list[0];

    if (count > 1) {
      result = false;
      return false;
    } else {
      result = true;
    }

    i++;
  }

  return result;
}
