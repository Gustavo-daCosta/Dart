import 'dart:io';

void main() {
  print('Qual é o seu nome?');
  var nome = stdin.readLineSync();
  print('Digite o seu salário: ');
  var salario = stdin.readLineSync();
  print('''============================================
Nome do funcionário: $nome
Salário: $salario
O funcionário $nome tem um salário de R\$$salario em Junho''');
}