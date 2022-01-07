import 'dart:io';

void main() {
  stdout.write('Digite o valor A da equação: ');
  String? inputValorA = stdin.readLineSync();
  stdout.write('Digite o valor B da equação: ');
  String? inputValorB = stdin.readLineSync();
  stdout.write('Digite o valor C da equação: ');
  String? inputValorC = stdin.readLineSync();

  if ((inputValorA != null) && (inputValorB != null) && (inputValorC != null)) {
    double valorA = double.parse(inputValorA);
    double valorB = double.parse(inputValorB);
    double valorC = double.parse(inputValorC);

    double delta = valorB*valorB - 4 * valorA * valorC;
    print('Equação apresentada: ${valorA.toStringAsFixed(0)}x² + ${valorB.toStringAsFixed(0)}x + ${valorC.toStringAsFixed(0)}');
    print('Fórmula do Delta: Δ = b² - 4 * a * c');
    print('Valor do Delta na equação apresentada: $delta');
  }
}