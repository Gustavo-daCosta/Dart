import 'dart:io';

void main() {
  stdout.write('Salário atual: R\$');
  String? inputSalarioAtual = stdin.readLineSync();
  stdout.write('Gênero [M/F]: ');
  String? inputGenero = stdin.readLineSync();
  stdout.write('Anos de empresa: ');
  String? inputAnosEmpresa = stdin.readLineSync();

  if (inputSalarioAtual != null && inputGenero != null && inputAnosEmpresa != null) {
    double salarioAtual = double.parse(inputSalarioAtual);
    String genero = inputGenero.toUpperCase();
    int anosEmpresa = int.parse(inputAnosEmpresa);
    double porcentagemGanho = 0;

    if (genero == 'M') {
      if (anosEmpresa < 15) {
        porcentagemGanho = 0.05;
      } else if (anosEmpresa <= 20) {
        porcentagemGanho = 0.12;
      } else {
        porcentagemGanho = 0.23;
      }
    } else if (genero == 'F') {
      if (anosEmpresa < 20) {
        porcentagemGanho = 0.03;
      } else if (anosEmpresa <= 30) {
        porcentagemGanho = 0.13;
      } else {
        porcentagemGanho = 0.25;
      }
    }
    double aumento = salarioAtual * porcentagemGanho;
    print('Parábens! Você ganhou um aumento salarial');
    print('Valor do aumento: R\$${aumento.toStringAsFixed(2)}');
    print('Novo salário com aumento: R\$${(salarioAtual + aumento).toStringAsFixed(2)}');
  }
}