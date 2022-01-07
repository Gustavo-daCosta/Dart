import 'dart:io';

void main() {
  stdout.write('Nome: ');
  String? inputNome = stdin.readLineSync();
  stdout.write('Gênero [M/F]: ');
  String? inputGenero = stdin.readLineSync();
  stdout.write('Valor das compras: R\$');
  String? inputValor = stdin.readLineSync();

  if (inputNome != null && inputValor != null && inputGenero != null) {
    String nome = inputNome;
    String genero = inputGenero.toUpperCase();
    double valor = double.parse(inputValor);

    if (genero == 'F') {
      print('Parabéns! Você ganhou um desconto de 13%');
      print('Valor do desconto: R\$${(valor*0.13).toStringAsFixed(2)}');
      print('Valor final: R\$${(valor - valor * 0.13).toStringAsFixed(2)}');
    } else {
      print('Parabéns! Você ganhou um desconto de 5%');
      print('Valor do desconto: R\$${(valor*0.05).toStringAsFixed(2)}');
      print('Valor final: R\$${(valor - valor * 0.05).toStringAsFixed(2)}');
    }
  }
}