import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  createGame();
}

createGame() {
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");

  final random = Random();

  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock",
  };

  int user = 0, comp = 0;

  List<String> list = ['rock', 'scissors', 'paper'];

  while (true) {
    String text = list[random.nextInt(list.length)];
    print(text);
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userText = stdin.readLineSync()!.toLowerCase();

    if (userText == 'exit') {
      print("\nYou: $user Computer: $comp");
      break;
    }

    if (!list.contains(userText)) {
      print("Incorrect choice");
      continue;
    } else if (text == userText) {
      print("We have a tie!");
    } else if (rules['userText'] == text) {
      print("Computer wins: $text vs $userText");
      comp++;
    } else if (rules['text'] == userText) {}
  }
}
