import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String? inputNumber = stdin.readLineSync();

  if (inputNumber != null) {
    int number = int.parse(inputNumber);
    int antecessor = number - 1;
    int sucessor = number + 1;
    print('O antecessor de $number é $antecessor');
    print('O sucessor de $number é $sucessor');
  }
}