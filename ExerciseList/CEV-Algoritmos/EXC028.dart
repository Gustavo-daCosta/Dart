import 'dart:io';

void main() {
  stdout.write('Digite a largura do terreno em metros: ');
  String? inputLargura = stdin.readLineSync();
  stdout.write('Digite o comprimento do terreno em metros: ');
  String? inputComprimento = stdin.readLineSync();

  if (inputComprimento != null && inputLargura != null) {
    double largura = double.parse(inputLargura);
    double comprimento = double.parse(inputComprimento);
    double area = largura * comprimento;
    String classificacaoTerreno = 'Desconhecida';

    print('Área do terreno: ${area.toStringAsFixed(0)}m²');
    if (area < 100) {
      classificacaoTerreno = 'Popular';
    } else if (area >= 100 && area <= 500) {
      classificacaoTerreno = 'Master';
    } else {
      classificacaoTerreno = 'Vip';
    }
    print('Classificação do terreno: Terreno $classificacaoTerreno');
  }
}