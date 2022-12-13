import 'dart:io';

void main(List<String> args) {
  someGrapic(4);
}

someGrapic(int n) {
  String column = '';
  List<String> list = List.generate(n, (index) => '|   ');
  // print(list);

  for (var i = 0; i < n; i++) {
    column += list[i];
  }

  for (var i = 0; i < n; i++) {
    if (i > 0) {
      print(column);
    }
    for (var j = 0; j < n; j++) {
      if (j < n-1) {
        stdout.write(" ---");
      } 
    }
    print("");
  }
}
