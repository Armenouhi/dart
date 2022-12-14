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
  print(birthday('friends.json'));
}

birthday(String fP) {
  String birthDay = '';
  var filePath = File('files/$fP');
  Map<String, dynamic> data = json.decode(filePath.readAsStringSync());
  var friends = data.values.first;
  int index = 0;
  String str = '';

  for (var friend in friends) {
    if (friend['birthday'].contains('/')) {
      index = friend['birthday'].indexOf('/') + 2;
      birthDay = friend['birthday'];
      if (friend['birthday'].indexOf('/') + 1 == '0') {
        
        str = birthDay[index];
        print(str);
      } else {
        str = '1${birthDay[index]}';
        print(str);
      }
    }
  }

  print(birthDay[index]);

  switch (str) {
    case '2':
      {
        print(Months.February);
      }
      break;
    case '3':
      {
        print(Months.March);
      }
      break;
    case '4':
      {
        print(Months.April);
      }
      break;
    case '5':
      {
        print(Months.May);
      }
      break;
    case '6':
      {
        print(Months.June);
      }
      break;
    case '7':
      {
        print(Months.July);
      }
      break;
    case '8':
      {
        print(Months.August);
      }
      break;
    case '9':
      {
        print(Months.September);
      }
      break;
    case '10':
      {
        print(Months.October);
      }
      break;
    case '11':
      {
        print(Months.November);
      }
      break;
    case '12':
      {
        print(Months.December);
      }
      break;
    default:
      {
        print(Months.January);
      }
      ;
  }

  print(index);
}
