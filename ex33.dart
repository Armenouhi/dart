void main(List<String> args) {
  List<int> list = [15, 26, 7, 4, 9, 19];
  print(list.length - (list.length / 2).round());

  // print(mergeSort(list));
  mergeSort(list);
}

mergeSort(List<int> list) {
  int length = list.length;

  List<int> left = [], right = [];

  if (length > 1) {
    left = List.generate((length / 2).round(), (index) => list[index]);
    right = List.generate(
        (length / 2).round(),
        (index) => index >= list.length - (list.length / 2).round()
            ? list[index]
            : list.reversed.toList()[index],
            growable: true);

    mergeSort(left);
    mergeSort(right);

    // print(left);
    // print(right);

    int i = 0, j = 0, k = 0;

    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        list[k] = left[i];
        i++;
      } else {
        list[k] = right[j];
        j++;
      }
      k++;
    }

    while (i < left.length - 1) {
      // print(left[i]);
      list[k] = left[i];
      i++;
      k++;
    }

    while (j < right.length) {
      // print(right[j]);
      list[k] = right[j];
      j++;
      k++;
    }
  }

  print(list);
}
