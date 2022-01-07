import 'dart:io';

void main() {
  stdout.write('Digite a distância da viagem em Km: ');
  String? inputDistancia = stdin.readLineSync();

  if (inputDistancia != null) {
    int distancia = int.parse(inputDistancia);
    double valor = 0;
    if (distancia <= 200) {
      valor = distancia * 0.50;
    } else {
      valor = distancia * 0.45;
    }
    print('Valor total da viagem: R\$${valor.toStringAsFixed(2)}');
  }
}