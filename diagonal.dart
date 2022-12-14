import 'dart:io';

void main(List<String> args) {
  diagonal(5);
}

void diagonal(int n) {
  var i;
  for (i = 0; i < n; i++) {
    for (var k = i; k < n; k++) {
      stdout.write(" ");
    }
    for (var j = 0; j <= 2 * i; j++) {
      stdout.write("*");
    }
    print("");
  }

  n = i;

  for (var i = n - 1; i > 0; i--) {
    for (var k = i; k < n + 1; k++) {
      stdout.write(" ");
    }
    for (var j = 2 * i; j > 1; j--) {
      stdout.write("*");
    }
    print("");
  }
}
