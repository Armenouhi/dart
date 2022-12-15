import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the name: ");
  String? name = stdin.readLineSync();

  print(birthday(name!, 'friends.json'));
}

birthday(String name, String fP) {
  var message = '';

  var filePath = File('files/$fP');
  Map<String, dynamic> data = json.decode(filePath.readAsStringSync());
  var friends = data.values.first;

  print(friends);

  for (var friend in friends) {
    if (name == friend["name"]) {
      message = '$name\'s birthday is ${friend["birthday"]}';
      return message;
    } else {
      message = 'Who\'s birthday do you want to look up? ';
      // return message; 
    }
  }
  return message;
}
