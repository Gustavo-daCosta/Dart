import 'dart:io';

main() {
  print('======== IMC ========');
  stdout.write('Peso: ');
  String? inputPeso = stdin.readLineSync();
  stdout.write('Altura: ');
  String? inputAltura = stdin.readLineSync();
  
  if (inputPeso != null && inputAltura != null) {
    int peso = int.parse(inputPeso);
    double altura = double.parse(inputAltura);

    double calcIMC = peso / (altura * altura);
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
    } else if (calcIMC >= 40) {
      print('Obesidade grau 3');
    }
  }
}
