import 'dart:io';

void main() {
  stdout.write('Digite uma distância em metros: ');
  String? inputDistMetros = stdin.readLineSync();

  if (inputDistMetros != null) {
    double distMetros = double.parse(inputDistMetros);
    double distQuilometros = distMetros / 1000;
    double distHectometro = distMetros / 100;
    double distDecametro = distMetros / 10;
    double distMilimetro = distMetros * 1000 ;
    double distCentimetro = distMetros * 100;
    double distDecimetro = distMetros * 10;

    print('''
    A distância de ${distMetros.toStringAsFixed(2)}m corresponde a: 
    Quilômetros: ${distQuilometros.toStringAsFixed(2)} km
    Hectômetros: ${distHectometro.toStringAsFixed(2)} hm
    Decâmetros: ${distDecametro.toStringAsFixed(2)} dam
    Milímetros: ${distMilimetro.toStringAsFixed(2)} mm
    Centímetros: ${distCentimetro.toStringAsFixed(2)} cm
    Decímetros: ${distDecimetro.toStringAsFixed(2)} dm
    ''');
  }
}