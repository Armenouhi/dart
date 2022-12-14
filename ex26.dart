import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the name: ");
  String? name = stdin.readLineSync();
  print(birthday(name!));
}

birthday(String name) {
  var message = '';
  List<Map<String, dynamic>> friends = [
    {"name": 'Friend1', "birthday": "2000/01/01"},
    {"name": 'Friend2', "birthday": "2001/02/02"},
    {"name": 'Friend3', "birthday": "2002/03/03"},
    {"name": 'Friend4', "birthday": "2003/04/04"}
  ];

  // friends.forEach(
  //   (friend) {
  //     if (name == friend["name"]) {
  //       print(friend["birthday"]);
  //       message = '$name\'s birthday is ${friend["birthday"]}';
  //       // print(message);
  //       return ;
  //     } else {
  //       message = 'Who\'s birthday do you want to look up? ';
  //       // print(message);
  //       return;
  //     }
  //   },
  // );

  for (var friend in friends) {
    if (name == friend["name"]) {
      message = '$name\'s birthday is ${friend["birthday"]}';
      return message;
    } else {
      message = 'Who\'s birthday do you want to look up? ';
      return message;
    }
  }

}
