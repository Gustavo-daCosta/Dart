import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String? inputNumber = stdin.readLineSync();

  if (inputNumber != null) {
    double number = double.parse(inputNumber);
    double dobro = number * 2;
    double parte3 = number / 3;

    print('O dobro de $number é ${dobro.toStringAsFixed(1)}');
    print('A terça parte de $number é ${parte3.toStringAsFixed(1)}');
  }
}