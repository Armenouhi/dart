void main(List<String> args) {
  List<int> list = [7, -4, 6, -2, 7, -5];
  largestProduct(list);
}

largestProduct(List<int> list) {
  int? max;
  int length = list.length;

  if (length == 0) {
    return null;
  } else if (length == 1) {
    max = list.first;
  } else {
    var i = 0;
    max = list[i] * list[i + 1];
    for (i; i < length - 1; i++) {
      if (list[i] * list[i + 1] > max!) {
        max = list[i] * list[i + 1];
      }
    }
  }
  return (max);
}
