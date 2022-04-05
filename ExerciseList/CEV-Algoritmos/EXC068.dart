import 'dart:io';

void main() {
  int totalMulheres = 0;
  int homens100Kg = 0;
  double somaPesoMulheres = 0;
  double maiorPesoHomens = 0;
  int totalHomens = 0;

  for (int i = 1; i <= 8; i++) {
    print("========= PESSOA $i =========");
    stdout.write("Gênero [M/F]: ");
    String? genero = stdin.readLineSync();
    stdout.write("Peso: ");
    String? inputPeso = stdin.readLineSync();

    if (genero != null && inputPeso != null) {
      double peso = double.parse(inputPeso);
      if (genero.toUpperCase() == "F") {
        totalMulheres++;
        somaPesoMulheres += peso;
      } else if (genero.toUpperCase() == "M") {
        totalHomens++;
        if (totalHomens == 1) {
          maiorPesoHomens == peso;
        } else {
          if (peso > maiorPesoHomens) {
            maiorPesoHomens = peso;
          }
        }
        if (peso > 100) {
          homens100Kg++;
        }
      }
    }
  }
  print("=-="*12);
  print("Número de mulheres cadastradas: $totalMulheres mulheres");
  print("Número de homens com mais de 100Kg: $homens100Kg homens");
  print("Média de peso entre as mulheres: ${somaPesoMulheres/totalMulheres}");
  print("Maior peso entre os homens: $maiorPesoHomens Kg");
}