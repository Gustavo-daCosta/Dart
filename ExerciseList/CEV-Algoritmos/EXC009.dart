import 'dart:io';

void main() {
  stdout.write('Digite a quantida em reais: R\$');
  String? inputQuantia = stdin.readLineSync();

  if (inputQuantia != null) {
    double quantiaReal = double.parse(inputQuantia);

    double cotacaoDolar = 5.57; // Cotação do dólar na data: 02/01/2022
    double quantiaDolar = quantiaReal / cotacaoDolar;
    print('Com R\$${quantiaReal.toStringAsFixed(2)} reais você pode comprar \$${quantiaDolar.toStringAsFixed(2)} dólares.');
  }
}