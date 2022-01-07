import 'dart:io';

void main() {
  stdout.write('Quantidade de Km\'s percorridos: ');
  String? inputQuilometragem = stdin.readLineSync();
  stdout.write('Total de dias alugados: ');
  String? inputDiasAluguel = stdin.readLineSync();

  if (inputQuilometragem != null && inputDiasAluguel != null) {
    double quilometragem = double.parse(inputQuilometragem);
    int diasAluguel = int.parse(inputDiasAluguel);
    double valorTotal = (quilometragem * 0.20) + (diasAluguel * 90);

    print('Valor referente aos Km\'s rodados: R\$${(quilometragem*0.20).toStringAsFixed(2)}');
    print('Valor referente aos dias de aluguel: R\$${(diasAluguel*90).toStringAsFixed(2)}');
    print('Valor total a se pagar: R\$${valorTotal.toStringAsFixed(2)}');
  }
}