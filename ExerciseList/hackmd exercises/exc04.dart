import 'dart:io';

void main() {
  stdout.write('Type any number: ');
  String? inputNumber = stdin.readLineSync();

  if (inputNumber != null) {
    int number = int.parse(inputNumber);
    List<int> divisorsList = [];

    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisorsList.add(i);
      }
    }
    print('Divisors of number $number: $divisorsList');
  }
}