import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  onReadtexts('sowpods.txt');
}

onReadtexts(String file) {
  var fileObj = File('files/$file');

  Future<int> word = fileObj
      .readAsString()
      .then((String value) => Random().nextInt(value.length));

  word.then((value) => print(value));
}
