import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  gameHangman();
}

gameHangman() {
  stdout.write("Please enter the word: ");
  String? word = stdin.readLineSync();
  print(word);
  int f = 0;
  int t = 0;
  String victory = '';
  int length = word!.length;

  while (true) {
    bool tF = false;
    stdout.write("Please enter the letter: ");
    String? letter = stdin.readLineSync();

    if (letter!.length != 1) {
      f += 1;
    }

    for (var i = 0; i < word!.length; i++) {
      if (letter == word[i]) {
        tF = true;
        t += 1;
        word = word.substring(1);
        print(word);
        print(t);
        break;
      } else {
        tF = false;
        print(word[i]);
        f += 1;
        break;
      }
    }

    if (f == 6) {
      victory = 'You lost the game';
      print(victory);
      break;
    }

    if (t == length) {
      victory = 'You won the game';
      print(victory);
      break;
    }
  }
  return victory;
}
