import 'dart:io';

void main() {
  stdout.write("Digite o primeiro termo da PA: ");
  String? inputPrimeiroTermo = stdin.readLineSync();
  stdout.write("Digite a razão da PA: ");
  String? inputRazao = stdin.readLineSync();
  int soma = 0;

  if (inputPrimeiroTermo != null && inputRazao != null) {
    int primeiroTermo = int.parse(inputPrimeiroTermo);
    int razao = int.parse(inputRazao);
    print("10 primeiros valores da PA:");
    for (int i = 0; i <= 10; i++) {
      stdout.write("${primeiroTermo+(razao*i)} ");
      soma += razao * i;
    }
    print("FIM!");
  }
  print("Soma dos valores: $soma");
}