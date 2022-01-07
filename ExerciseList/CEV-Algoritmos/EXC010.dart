import 'dart:io';

void main() {
  stdout.write('Digite a largura da parede em metros: ');
  String? inputLargura = stdin.readLineSync();
  stdout.write('Digite a altura da parede em metros: ');
  String? inputAltura = stdin.readLineSync();

  if (inputLargura != null && inputAltura != null) {
    double largura = double.parse(inputLargura);
    double altura = double.parse(inputAltura);
    double litrosTinta = (largura * altura) / 2;

    print('Em uma parede de $altura metros de altura e $largura metros de largura seriam necessários ${litrosTinta.toStringAsFixed(1)} litros de tinta para pintar toda a parede.');
    print('OBS: Considerando 1 litro de tinta para cada 2 metros quadrados.');
  }
}