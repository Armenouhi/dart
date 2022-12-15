import 'dart:convert';
import 'dart:io';

enum Months {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

void main(List<String> args) {
  // print(birthday('friends.json'));
  birthday('friends.json');
}

birthday(String fP) {
  String birthDay = '';
  var filePath = File('files/$fP');
  Map<String, dynamic> data = json.decode(filePath.readAsStringSync());
  var friends = data.values.first;
  int index = 0;
  String memberOfList = '';
  List<String> birthdays = [];
  int count = 0;
  String key = '';
  Map<String, String> monthsDays = {};

  for (var friend in friends) {
    if (friend['birthday'].contains('/')) {
      index = friend['birthday'].indexOf('/');
      birthDay = friend['birthday'];
      if (birthDay[index + 1] == '0') {
        memberOfList = '0${birthDay[index + 2]}';
        birthdays.add(memberOfList);
      } else {
        memberOfList = '1${birthDay[index + 2]}';
        birthdays.add(memberOfList);
      }
    }
  }

  for (var i = 0; i < birthdays.length; i++) {
    if (birthdays[i] == '02') {
      count++;
      key = Months.February.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '03') {
      count = 0;
      count++;
      key = Months.March.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '04') {
      count = 0;
      count++;
      key = Months.April.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '05') {
      count = 0;
      count++;
      key = Months.May.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '06') {
      count = 0;
      count++;
      key = Months.June.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '07') {
      count = 0;
      count++;
      key = Months.July.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '08') {
      count = 0;
      count++;
      key = Months.August.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '09') {
      count = 0;
      count++;
      key = Months.September.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '10') {
      count = 0;
      count++;
      key = Months.October.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '11') {
      count = 0;
      count++;
      key = Months.November.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else if (birthdays[i] == '12') {
      count = 0;
      count++;
      key = Months.December.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    } else {
      count = 0;
      count++;
      key = Months.January.toString();
      monthsDays[key.substring(key.indexOf('.') + 1)] = '$count';
    }
    ;
  }

  print(monthsDays);
  return monthsDays;
}
  