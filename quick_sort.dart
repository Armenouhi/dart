import 'dart:math';

void main(List<String> args) {
  List<int> list = [15, 26, 7, 4];

  print(quickSort(list));
}

List<int> quickSort(List<int> list) {
  Random random = new Random();

  int length = list.length;
  int lengthLeftList = length > 3 ? random.nextInt(length - 2) : 1;
  print(lengthLeftList);
  int lengthRightList = length - lengthLeftList;
  print(lengthRightList);

  if (list.length <= 1) {
    return list;
  }

  List<int> left = [], right = [];
  left = List.generate(lengthLeftList, (index) => list[index]);
  print(left);

  right =
      List.generate(lengthRightList, (index) => list.reversed.toList()[index]);
  print(right);

  // return [];

  return quick(quickSort(left), quickSort(right));
}

quick(List<int> left, List<int> right) {
  int i = 0, j = 0;
  List<int> result = [];

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

 
  return result;
}
