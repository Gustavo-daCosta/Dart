import 'dart:io';

void main() {
  stdout.write('Nome do funcionário: ');
  String? inputNome = stdin.readLineSync();
  stdout.write('Salário do funcionário: R\$');
  String? inputSalario = stdin.readLineSync();
  stdout.write('Há quantos anos o funcionário trabalha na empresa? ');
  String? inputAnosEmpresa = stdin.readLineSync();

  if (inputNome != null && inputSalario != null && inputAnosEmpresa != null) {
    String nome = inputNome;
    double salario = double.parse(inputSalario);
    int anosEmpresa = int.parse(inputAnosEmpresa);
    double reajuste = 0;
    double porc = 0;

    if (anosEmpresa <= 3) {
      porc = 3;
      reajuste = salario * 0.03;
    } else if (anosEmpresa > 3 && anosEmpresa < 10) {
      porc = 12.5;
      reajuste = salario * 0.125;
    } else {
      porc = 20;
      reajuste = salario * 0.20;
    }
    print('Parábens! Você tem direito a um reajuste salárial de %$porc!');
    print('Valor do reajuste: R\$${reajuste.toStringAsFixed(2)}');
    print('Novo salário com o reajuste aplicado: R\$${(salario + reajuste).toStringAsFixed(2)}');
  }
}