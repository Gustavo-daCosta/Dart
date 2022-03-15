import 'src/pessoa.dart';
import 'dart:io';

Pessoa pessoa = Pessoa();

void main(List<String> arguments) {
  stdout.write("Digite o seu nome: ");
  String? nome = stdin.readLineSync();
  stdout.write("Digite a sua idade: ");
  String? idade = stdin.readLineSync();
  stdout.write("Digite a sua altura: ");
  String? altura = stdin.readLineSync();
  stdout.write("Digite o seu peso: ");
  String? peso = stdin.readLineSync();

  if (nome != null && idade != null && altura != null && peso != null) {
    pessoa.nome = nome;
    pessoa.idade = int.parse(idade);
    pessoa.altura = double.parse(altura);
    pessoa.peso = double.parse(peso);

    print("Nome: ${pessoa.nome}");
    print("IMC: ${pessoa.imc()}");
    print("Maior de idade? ${pessoa.maiorDeIdade()}");
  }
}