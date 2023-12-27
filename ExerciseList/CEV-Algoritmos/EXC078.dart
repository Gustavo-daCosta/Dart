import 'dart:io';

void main() {
  List multiplos = <int>[];

  for (int i = 0; i <= 15; i++) {
    stdout.write("Digite o $i° número: ");
    String? inputNumero = stdin.readLineSync();
    if (inputNumero != null) {
      if (int.tryParse(inputNumero)! % 10 == 0) {
        multiplos.add(i);
      }
    }
  }
  print("Posição dos Valores múltiplos de 10:");
  print(multiplos);
}