// typedef List<List<int>> list;
void main(List<String> args) {
  List<List<int>> game = [
    [1, 2, 2],
    [2, 1, 2],
    [1, 1, 2]
  ];
  ticTacToc(game);
}

ticTacToc(List<List<int>> game) {
  String message = '';
  int countRow = 0;
  int countColumn = 0;
  int diagonalLine = 0;
  var i;
  String player = '';

  for (i = 0; i < game.length - 1; i++) {
    // print(game[i]);
    for (var j = 0; j < game[i].length - 1; j++) {
      if (game[i][j] == 1) {
        player = 'First player';
      } else if (game[i][j] == 2) {
        player = 'Second player';
      } else {
        player = '';
      }

      if ((game[i][j] == game[i][j + 1] && game[i][j] != 0)) {
        countRow++;
        countColumn = 0;
        diagonalLine = 0;
      } else if (((game[i][j] == game[i + 1][j])) && game[i][j] != 0) {
        countRow = 0;
        diagonalLine = 0;
        countColumn++;
        // print(countColumn);
      } else if ((game[i][j] == game[i + 1][j + 1]) && game[i][j] != 0) {
        countRow = 0;
        countColumn = 0;

        diagonalLine++;
        print(diagonalLine);
      }

      if (countRow == game[i].length - 1 ||
          countColumn == game.length - i ||
          diagonalLine == 1) {
        message = 'The $player won!';
        print(message);
        countRow = 0;
        countColumn = 0;
        diagonalLine = 0;

        return;
      } else {
        message = 'Nobody won!';
        // return;
      }
    }
  }
}
