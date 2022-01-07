import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String? inputNumero = stdin.readLineSync();

  if (inputNumero != null) {
    int numero = int.parse(inputNumero);

    if (numero % 2 == 0) {
      print('O número $numero é par!');
    } else {
      print('O número $numero é ímpar');
    }
  }
}