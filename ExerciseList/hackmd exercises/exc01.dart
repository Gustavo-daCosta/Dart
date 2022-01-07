import 'dart:io';

void main() {
  stdout.write('What\'s your name? ');
  String? name = stdin.readLineSync();

  stdout.write('What\'s your age? ');
  String? inputAge = stdin.readLineSync();
  if (inputAge != null) {
    int age = int.parse(inputAge);
    print('$name, you have ${100 - age} years left until you are 100 years old.');
  }
}