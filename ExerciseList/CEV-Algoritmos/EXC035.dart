import 'dart:io';

void main() {
  stdout.write('Tipo de carro: [LUXO/POPULAR]: ');
  String? inputTipoCarro = stdin.readLineSync();
  stdout.write('O carro foi alugado por quantos dias? ');
  String? inputTempoAluguel = stdin.readLineSync();
  stdout.write('Quantos quilômetros foram percorridos? ');
  String? inputQuilometragem = stdin.readLineSync();

  if (inputTipoCarro != null && inputTempoAluguel != null && inputQuilometragem != null) {
    String tipoCarro = inputTipoCarro.toUpperCase();
    int tempoAluguel = int.parse(inputTempoAluguel);
    int quilometragem = int.parse(inputQuilometragem);
    int valorAluguel = 0;
    double valorKM = 0;

    if (tipoCarro == 'LUXO') {
      valorAluguel = 150;
      if (quilometragem <= 200) {
        valorKM = 0.30;
      } else {
        valorKM = 0.25;
      }
    } else {
      valorAluguel = 90;
      if (quilometragem <= 100) {
        valorKM = 0.20;
      } else {
        valorKM = 0.10;
      }
    }
    double valorFinal = (tempoAluguel * valorAluguel) + (quilometragem * valorKM);
    print('Valor referente aos dias de aluguel: R\$${(tempoAluguel * valorAluguel).toStringAsFixed(2)}');
    print('Valor referente aos quilômetros percorridos: R\$${(quilometragem * valorKM).toStringAsFixed(2)}');
    print('Valor total a se pagar: R\$${valorFinal.toStringAsFixed(2)}');
  }
}