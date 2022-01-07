import 'dart:io';

void main() {
  stdout.write('Digite o número de dias trabalhados neste mês: ');
  String? inputDiasTrabalhados = stdin.readLineSync();

  if (inputDiasTrabalhados != null) {
    int diasTrabalhados = int.parse(inputDiasTrabalhados);
    double salario = diasTrabalhados * 8 * 25;

    print('Salário mensal: R\$${salario.toStringAsFixed(2)}');
    print('OBS: Considerando 8 horas por dia de trabalho e R\$25 por hora trabalhada.');
  }
}