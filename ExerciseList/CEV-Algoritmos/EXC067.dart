import 'dart:io';

void main() {
  stdout.write("Digite um valor: ");
  String? inputNumero = stdin.readLineSync();

  if (inputNumero != null) {
    int numero = int.parse(inputNumero);
    for (int i = 0; i <= numero; i++) {
      stdout.write("$i ");
    }
    print("FIM!");
  }
}