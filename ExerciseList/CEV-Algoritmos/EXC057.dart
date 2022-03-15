import 'dart:io';

void main() {
  double totalSalarioHomens = 0;
  double totalSalarioMulheres = 0;
  bool condicao = true;
  int cont = 0;

  while (condicao == true) {
    cont++;
    stdout.write("Digite o salário do $cont° funcionário");
    String? inputSalario = stdin.readLineSync();
    stdout.write("Digite o gênero do $cont° funcionário: ");
    String? genero = stdin.readLineSync();
    stdout.write("Você deseja continuar? [S/N] ");
    String? opcao = stdin.readLineSync();

    if (inputSalario != null && genero != null && opcao != null) {
      double salario = double.parse(inputSalario);
      if (genero.toUpperCase() == "M") {
        totalSalarioHomens += salario;
      } else {totalSalarioMulheres += salario;}
      if (opcao.toUpperCase() == "N" || opcao.toUpperCase() == "NÃO"){
        break;
      }
    }
  }
  print("="*30);
  print("Total de salário pago aos homens: R\$$totalSalarioHomens");
  print("Total de salário pago as mulheres: R\$$totalSalarioMulheres");
}