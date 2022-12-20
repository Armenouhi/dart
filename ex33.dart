void main(List<String> args) {
  List<int> list = [15, 26, 7, 4, 47, 11, 91, 19, 45, 74, 18];

  print(mergeSort(list));
  // mergeSort(list);
}

List<int> mergeSort(List<int> list) {
  int length = list.length;

  List<int> left = [], right = [];

  if (length > 1) {
    left = List.generate((length / 2).round(), (index) => list[index]);
    right = List.generate(
      length % 2 == 0 ? (length / 2).round() : ((length / 2).round() - 1),
      (index) => list.reversed.toList()[index],
    );

    print(mergeSort(right));

    return merge(mergeSort(left), mergeSort(right));
  } else {
    return list;
  }
}

merge(List<int> left, List<int> right) {
  int i = 0, j = 0;

  List<int> list = [];

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      list.add(left[i]);
      i++;
    } else if (left[i] > right[j]) {
      list.add(right[j]);
      j++;
    } else {
      list.add(left[i]);
      i++;
      list.add(right[j]);
      j++;
    }
  }

  while (i < left.length - 1) {
    list.add(left[i]);
    i++;
  }

  while (j < right.length) {
    list.add(right[j]);
    j++;
  }

  return list;
}
