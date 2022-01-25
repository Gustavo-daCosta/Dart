import 'dart:io';

main() {
  calculoIMC();
}

// Função que calcula o IMC
calculoIMC() {
  print('======== IMC ========');
  stdout.write('Peso: ');
  String? inputPeso = stdin.readLineSync();
  stdout.write('Altura: ');
  String? inputAltura = stdin.readLineSync();
  
  if (inputPeso != null && inputAltura != null) {
    int peso = int.parse(inputPeso);
    double altura = double.parse(inputAltura);

    double imc = calcIMC(peso, altura);
    print('Seu IMC é $imc');

    imprimirResultado(imc);
  }
}
// Função que recebe o peso e a altura e retorna o IMC
double calcIMC(int peso, double altura) {
  return peso / (altura * altura);
}

// Imprime o resultado baseado no imc passado por parâmetro
imprimirResultado(double imc) {
  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('Peso Normal');
  } else if (imc >= 25 && imc < 30) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('Obesidade grau 2');
  } else if (imc >= 40) {
    print('Obesidade grau 3');
  }
}