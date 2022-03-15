import 'dart:io';

void main() {
  bool condicao = true;
  String nomePessoaMaisVelha = "";
  int idadePessoaMaisVelha = 0;
  String mulherMaisJovem = "";
  int idadeMulherMaisJovem = 0;
  int somaIdade = 0;
  int homensMais30anos = 0;
  int mulheresMenos18anos = 0;
  int contador = 0;

  while (condicao == true) {
    contador++;
    print("====== Registro da $contador° pessoa ======");
    stdout.write("Nome: ");
    String? nome = stdin.readLineSync();
    stdout.write("Idade: ");
    String? inputIdade = stdin.readLineSync();
    stdout.write("Gênero [M/F]: ");
    String? genero = stdin.readLineSync();

    if (nome != null && inputIdade != null && genero != null) {
      int idade = int.parse(inputIdade);
      somaIdade += idade;
      if (genero.toUpperCase() == "M") {
        if (idade > 30) {homensMais30anos++;}
      } else {
        if (idade < 18) {mulheresMenos18anos++;}
      }
      if (contador == 1) {
        idadePessoaMaisVelha = idade;
        nomePessoaMaisVelha = nome;
        if (genero.toUpperCase() == "F") {
          mulherMaisJovem = nome;
        }
      } else {
        if (idade > idadePessoaMaisVelha) {
          idadePessoaMaisVelha = idade;
          nomePessoaMaisVelha = nome;
        }
        if (genero.toUpperCase() == "F") {
          if (mulherMaisJovem == "") {
            mulherMaisJovem = nome;
            idadeMulherMaisJovem = idade;
          } else {
            if (idade < idadeMulherMaisJovem) {
              mulherMaisJovem = nome;
              idadeMulherMaisJovem = idade;
            }
          }
        }
      }
    }

    

    stdout.write("Você deseja continuar? [S/N]: ");
    String? opcao = stdin.readLineSync();
    if (opcao != null) {
      if (opcao.toUpperCase() == "N") {
        condicao = false;
      }
    }
  }
  print("=-="*12);
  print("Nome da pessoa mais velha: $nomePessoaMaisVelha");
  print("Nome da mulher mais jovem: $mulherMaisJovem");
  print("Média de idade do grupo: ${somaIdade/contador} anos");
  print("Total de homens com mais de 30 anos: $homensMais30anos homens");
  print("Total de mulheres com menos de 18 anos: $mulheresMenos18anos mulheres");
}
