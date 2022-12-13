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
    String compChoice = list[random.nextInt(list.length)];
    print(compChoice);
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == 'exit') {
      print("\nYou: $user Computer: $comp\nBye Bye!");
      break;
    }

    if (!list.contains(userChoice)) {
      print("Incorrect choice");
      continue;
    } else if (compChoice == userChoice) {
      print("We have a tie!");
    } else if (rules['userChoice'] == compChoice) {
      print("Computer wins: $compChoice vs $userChoice");
      comp++;
    } else if (rules['compChoice'] == userChoice) {}
  }
}
