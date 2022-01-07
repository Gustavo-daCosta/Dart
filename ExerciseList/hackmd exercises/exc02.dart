import 'dart:io';

void main() {
  stdout.write('Type any number: ');
  String? inputNumber = stdin.readLineSync();
  if (inputNumber != null) {
    int number = int.parse(inputNumber);
    if (number % 2 == 0) {
      print('The number $number is a even number!');
    } else {
      print('The number $number is a odd number!');
    }
  }
}