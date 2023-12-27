import 'dart:io';

void main() {
  Map valoresPares = {};

  for (int i = 0; i <= 10; i++) {
    stdout.write("Digite o ${i+1}° número");
    String? inputNumero = stdin.readLineSync();
    if (inputNumero != null) {
      int? numero = int.tryParse(inputNumero);
      if (numero! % 2 == 0) {
        valoresPares[i] = numero;
      }
    }
  }
  valoresPares.forEach((key, value) {
    print("Posição: $key    Valor: $value");
  });
}