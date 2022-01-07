import 'dart:io';

void main() {
  stdout.write('Digite o valor do produto: ');
  String? inputValorOriginal = stdin.readLineSync();

  if (inputValorOriginal != null) {
    double valorOriginal = double.parse(inputValorOriginal);
    double desconto = valorOriginal * 0.05;

    print('Valor do desconto: R\$$desconto');
    print('Valor final com desconto aplicado: R\$${valorOriginal - desconto}');
  }
}