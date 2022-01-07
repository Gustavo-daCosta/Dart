import 'dart:io';

void main() {
  stdout.write('Tamanho do 1° segmento de reta: ');
  String? inputSeg1 = stdin.readLineSync();
  stdout.write('Tamanho do 2° segmento de reta: ');
  String? inputSeg2 = stdin.readLineSync();
  stdout.write('Tamanho do 3° segmento de reta: ');
  String? inputSeg3 = stdin.readLineSync();

  if (inputSeg1 != null && inputSeg2 != null && inputSeg3 != null) {
    double seg1 = double.parse(inputSeg1);
    double seg2 = double.parse(inputSeg2);
    double seg3 = double.parse(inputSeg3);

    String mensagem = 'Não é possível formar um triângulo com essas retas.';
    if (seg1 < (seg3 + seg2)) {
      if (seg2 < (seg1 + seg3)) {
        if (seg3 < (seg1 + seg2)) {
          mensagem = 'Sim! É possível formar um triângulo com essas retas.';
        }
      }
    }
    print(mensagem);
  }
}