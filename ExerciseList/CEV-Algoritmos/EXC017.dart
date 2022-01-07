import 'dart:io';

void main() {
  stdout.write('Digite a velocidade do carro em km/h: ');
  String? inputVelocidade = stdin.readLineSync();

  if (inputVelocidade != null) {
    double velocidade = double.parse(inputVelocidade);
    if (velocidade > 80) {
      double multa = (velocidade - 80) * 5;
      print('Você excedeu o limite de velocidade de 80km/h!');
      print('Você foi multado no valor de R\$${multa.toStringAsFixed(2)}');
    } else {
      print('Parabéns! Você está dentro do limite de velocidade.');
    }
  }
}