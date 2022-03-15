import 'dart:io';

void main() {
  bool condicao = true;
  int maiorIdade = 0;
  int homensCadastrados = 0;
  int mulherMaisJovem = 0;
  int somaIdadeHomens = 0;
  int contador = 0;
  int totalMulheres = 0;

  while (condicao == true) {
    contador++;
    print("======== REGISTRO: $contador° PESSOA ========");
    stdout.write("Digite o gênero [M/F]: ");
    String? genero = stdin.readLineSync();
    stdout.write("Digite a idade: ");
    String? inputIdade = stdin.readLineSync();

    if (genero != null && inputIdade != null) {
      int idade = int.parse(inputIdade);

      if (contador == 1) {
        maiorIdade = idade;
      } else {
        if (idade > maiorIdade) {
          maiorIdade = idade;
        }
      }

      if (genero.toUpperCase() == "M") {
        homensCadastrados++;
        somaIdadeHomens += idade;
      } else {
        totalMulheres++;
        if (totalMulheres == 1) {
          mulherMaisJovem = idade;
        } else {
          if (idade < mulherMaisJovem) {mulherMaisJovem = idade;}
        }
      }
    }
    print("=-="*12);
    stdout.write("Deseja continuar? [S/N]: ");
    String? opcao = stdin.readLineSync();
    if (opcao != null) {
      if (opcao.toUpperCase() == "N") {condicao = false;}
    }
  }
  print("=-="*12);
  print("Maior idade lida: $maiorIdade anos");
  print("Total de homens cadastrados: $homensCadastrados homens");
  print("Idade da mulher mais jovem: $mulherMaisJovem anos");
  print("Média de idade entre os homens: ${somaIdadeHomens/contador} anos");
}