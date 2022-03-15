import 'dart:io';

void main() {
  int soma = 0;
  bool condicao = true;
  while (condicao == true) {
    stdout.write("Digite um número qualquer (1111 para parar): ");
    String? inputNumero = stdin.readLineSync();
    if (inputNumero != null) {
      int numero = int.parse(inputNumero);
      if (numero == 1111) {break;} else {soma += numero;}
    }
  }
  print("="*35);
  print("Soma dos números digitados: $soma");
}