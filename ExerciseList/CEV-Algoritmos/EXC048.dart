import 'dart:io';

void main() {
  int soma = 0;
  for (int i = 1; i <= 7; i++) {
    stdout.write("Digite o $i° valor: ");
    String? valor = stdin.readLineSync();

    if (valor != null) {
      soma += int.parse(valor);
    }
  }
  print('-'*20);
  print('Soma dos 7 valores digitados: $soma');
}