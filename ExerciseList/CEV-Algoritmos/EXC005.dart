import 'dart:io';

void main() {
  stdout.write('Nota 1: ');
  String? inputNota1 = stdin.readLineSync();
  stdout.write('Nota 2: ');
  String? inputNota2 = stdin.readLineSync();

  if (inputNota1 != null && inputNota2 != null) {
    double nota1 = double.parse(inputNota1);
    double nota2 = double.parse(inputNota2);
    double media = ((nota1 + nota2)/2);
    print('A média entre $nota1 e $nota2 é igual a ${media.toStringAsFixed(1)}');
  }
}