import 'dart:io';

void main() {
  stdout.write('Digite seu ano de nascimento: ');
  String? inputAnoNasc = stdin.readLineSync();

  if (inputAnoNasc != null) {
    int anoNasc = int.parse(inputAnoNasc);
    int idade = 2022 - anoNasc;

    if (idade < 18) {
      print('Você ainda não tem idade suficiente para se alistar.');
      print('Faltam ${18 - idade} anos para o alistamento militar.');
    } else if (idade == 18) {
      print('Você tem 18 anos! A idade exata para se alistar.');
    } else {
      print('Você já atingiu a idade para se alistar.');
      print('A idade do alistamento foi atingida ${idade - 18} anos atrás.');
    }
  }
}