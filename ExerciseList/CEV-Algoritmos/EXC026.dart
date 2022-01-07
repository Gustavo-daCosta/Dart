import 'dart:io';

void main() {
  stdout.write('Digite o 1° valor: ');
  String? inputValor1 = stdin.readLineSync();
  stdout.write('Digite o 2° valor: ');
  String? inputValor2 = stdin.readLineSync();

  if (inputValor1 != null && inputValor2 != null) {
    int valor1 = int.parse(inputValor1);
    int valor2 = int.parse(inputValor2);

    if (valor1 > valor2) {
      print('O primeiro valor é maior! ($valor1 > $valor2)');
    } else if (valor2 > valor1) {
      print('O segundo valor é maior! ($valor2 > $valor1)');
    } else {
      print('Não existe valor maior, os dois valores são iguais.');
    }
  }
}