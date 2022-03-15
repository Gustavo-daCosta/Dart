import 'dart:io';

void main() {
  int totalHomens = 0;
  int totalMulheres = 0;
  int somaIdadeGrupo = 0;
  int somaIdadeHomens = 0;
  int mulheres20anos = 0;

  for (int i = 1; i <= 5; i++) {
    stdout.write('Digite o gênero da $i° pessoa [M/F]: ');
    String? genero = stdin.readLineSync();
    stdout.write('Digite a idade da $i° pessoa: ');
    String? inputIdade = stdin.readLineSync();

    if (genero != null && inputIdade != null) {
      int idade = int.parse(inputIdade);
      if (genero.toUpperCase() == "M") {
        totalHomens++;
        somaIdadeHomens += idade;
      } else {
        totalMulheres++;
        if (idade > 20) {mulheres20anos++;}
      }
      somaIdadeGrupo += idade;
    }
  }
  print('='*25);
  print('Total de homens cadastrados: $totalHomens');
  print('Total de mulheres cadastradas: $totalMulheres');
  print('Média de idade do grupo: ${somaIdadeGrupo/5} anos');
  print('Média de idade dos homens: ${somaIdadeHomens/totalHomens} anos');
  print('Total de mulheres com mais de 20 anos: $mulheres20anos');
}