import 'dart:io';

void main() {
  stdout.write("Digite um valor: ");
  String? inputNumero = stdin.readLineSync();

  if (inputNumero != null) {
    int numero = int.parse(inputNumero);
    for (int i = 1; i <= 10; i++) {
      print("$numero * $i = ${numero*i}");
    }
  }
}