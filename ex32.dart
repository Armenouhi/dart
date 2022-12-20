void main(List<String> args) {
  print(isSortedList());
}

isSortedList() {
  List<int> list = [77, 74, 70, 69, 65, 62, 62, 57, 54, 47, 44, 40, 29, 25, 22, 17, 14, 5, 10];
  int countL = 0;
  int countS = 0;
  int length = list.length;

  print(DateTime.now());
  for (var j = 0; j < length - 1; j++) {
    if ((list[0] >= list[1] && list[length - 2] >= list[length - 1]) ||
        (list[0] >= list[1] &&
            list[(length / 2).round()] >= list[(length / 2).round() + 1]) ||
        (list[(length / 2).round()] >= list[(length / 2).round() + 1] &&
            list[length - 2] >= list[length - 1])) {
      if (list[j] < list[j + 1]) {
        countL++;
      }
    } else if ((list[0] <= list[1] && list[length - 2] <= list[length - 1]) ||
        (list[0] <= list[1] &&
            list[(length / 2).round()] <= list[(length / 2).round() + 1]) ||
        (list[(length / 2).round()] <= list[(length / 2).round() + 1] &&
            list[length - 2] < list[length - 1])) {
      if (list[j] > list[j + 1]) {
        countS++;
      }
    }
  }

  if (countL > 1 || countS > 1) {
    print(DateTime.now());
    return false;
  } else {
    print(DateTime.now());
    return true;
  }

}
