import 'dart:io';

void main() {
  print('Qual é o seu nome?');
  String? nome = stdin.readLineSync();
  print('Olá $nome, é um prazer te conhecer!');
}