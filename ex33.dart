void main(List<String> args) {
  List<int> list = [15, 26, 7, 4, 47, 11, 91, 19, 45, 74, 18];

  print(mergeSort(list));
}

List<int> mergeSort(List<int> list) {
  int length = list.length;
  int mid = (length / 2).round();

  if (list.length <= 1) {
    return list;
  }

  List<int> left = [], right = [];
  left = List.generate(mid, (index) => list[index]);
  // print(left);
  right = List.generate(length % 2 == 0 ? mid : mid - 1,
      (index) => list.reversed.toList()[index]);
  // print(right);

  return merge(mergeSort(left), mergeSort(right));
}

merge(List<int> left, List<int> right) {
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
