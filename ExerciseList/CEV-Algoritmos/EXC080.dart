import 'dart:io' show stdout, stdin;
import 'dart:math' show Random;

void main() {
  Random random = Random();
  List valoresAleatorios = <int>[];
  for (int i = 0; i <= 30; i++) {
    valoresAleatorios.add(random.nextInt(16) - 1);
  }
  stdout.write("Digite um número entre 1 e 15: ");
  String? inputNumero = stdin.readLineSync();
  if (inputNumero != null) {
    int? numero = int.tryParse(inputNumero);
    if (numero == )
  }
}