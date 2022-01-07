import 'dart:io';

void main() {
  int soma = 0;
  print('Digite um valor: ');
  var num1 = stdin.readLineSync();
  print('Digite outro valor: ');
  var num2 = stdin.readLineSync();
  if (num1 != null && num2 != null) {
    soma = int.parse(num1) + int.parse(num2);
  }
  print('A soma entre $num1 e $num2 é igual a $soma');
}