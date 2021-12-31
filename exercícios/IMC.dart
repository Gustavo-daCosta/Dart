import 'dart:io';

main() {
  print('====== Digite seu Peso ======');
  var textPeso = stdin.readLineSync();
  var peso = 1;
  if (textPeso != null) {
    peso = int.parse(textPeso);
  }

  print('====== Digite sua altura ======');
  var textAltura = stdin.readLineSync();
  var altura = 1.1;
  if (textAltura != null) {
    altura = double.parse(textAltura);
  }

  var calcIMC = peso / (altura * altura);

  print('Seu IMC é $calcIMC');

  if (calcIMC < 18.5) {
    print('Abaixo do peso');
  } else if (calcIMC >= 18.5 && calcIMC < 25) {
    print('Peso Normal');
  } else if (calcIMC >= 25 && calcIMC < 30) {
    print('Sobrepeso');
  } else if (calcIMC >= 30 && calcIMC < 35) {
    print('Obesidade grau 1');
  } else if (calcIMC >= 35 && calcIMC < 40) {
    print('Obesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}