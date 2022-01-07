import 'dart:io';

void main() {
  stdout.write('Digite o salário do funcionário: R\$');
  String? inputSalario = stdin.readLineSync();

  if (inputSalario != null) {
    double salario = double.parse(inputSalario);
    double aumento = salario * 0.15;

    print('Valor do aumento de 15%: R\$${aumento.toStringAsFixed(2)}');
    print('Valor do salário com aumento: R\$${(salario + aumento).toStringAsFixed(2)}');
  }
}