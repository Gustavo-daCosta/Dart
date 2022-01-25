import 'dart:io';

void main() {
  stdout.write('Digite um número positivo e inteiro: ');
  String? inputNumero = stdin.readLineSync();

  if (inputNumero != null) {
    int numero = int.parse(inputNumero);

    stdout.write('Contagem: ');
    for (int i = 1; i <= numero; i++) {
      stdout.write('$i ');
    }
  print('Acabou!');
  }
}