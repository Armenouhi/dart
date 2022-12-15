// typedef List<List<int>> list;
void main(List<String> args) {
  List<List<String>> game = [
    ['O', '0', 'O'],
    ['0', 'O', 'X'],
    ['O', '0', 'O']
  ];
  // ticTacToc(game);
  print(ticTacToc(game));
}

ticTacToc(List<List<String>> game) {
  int length = game.length;
  String message = '';
  int countRow = 0;
  int countColumn = 0;
  int diagonalLine = 0;
  int seconDiagonalLine = 0;
  String player = '';

  for (var i = 0; i < length; i++) {
    for (var j = 0; j < length - 1; j++) {
      if (game[i][j] == 'X') {
        player = 'First';
      } else if (game[i][j] == 'O') {
        player = 'Second';
      }

      if ((game[i][j] == game[i][j + 1] && game[i][j] != '0')) {
        countRow++;
        if (countRow == length - 1) {
          message = 'The $player won!';
          return message;
        } else {
          message = 'Nobody won!';
        }
      }
    }
  }

  for (var i = 0; i < length - 1; i++) {
    for (var j = 0; j < length; j++) {
      if (game[i + 1][j] == 'X') {
        player = 'First';
      } else if (game[i + 1][j] == 'O') {
        player = 'Second';
      }

      if ((game[i][j] == game[i + 1][j] && game[i][j] != '0')) {
        countColumn++;
        if (countColumn == length - 1) {
          message = 'The $player won!';
          return message;
        } else {
          message = 'Nobody won!';
        }
      }
    }
  }

  for (var i = 0; i < length - 1; i++) {
    for (var j = 0; j < length - 1; j++) {
      if (game[i + 1][j + 1] == 'X') {
        player = 'First';
      } else if (game[i + 1][j + 1] == 'O') {
        player = 'Second';
      }
      if ((game[i][j] == game[i + 1][j + 1] && game[i][j] != '0')) {
        diagonalLine++;
        if (diagonalLine == length - 1) {
          message = 'The $player won!';
          return message;
        } else {
          message = 'Nobody won!';
        }
      }
    }
  }

  for (var i = 0; i < length - 1; i++) {
    for (var j = length - 1; j > 0; j--) {
      if (game[i][j - 1] == 'X') {
        player = 'First';
      } else if (game[i][j - 1] == 'O') {
        player = 'Second';
      }
      if ((game[i][j] == game[i + 1][j - 1] && game[i][j] != '0')) {
        seconDiagonalLine++;
        if (seconDiagonalLine == length - 1) {
          message = 'The $player won!';
          return message;
        } else {
          message = 'Nobody won!';
        }
      }
    }
  }
  
}
