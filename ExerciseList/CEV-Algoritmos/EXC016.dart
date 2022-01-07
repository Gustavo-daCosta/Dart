import 'dart:io';

void main() {
  stdout.write('Quantidade de cigarros fumados diariamente: ');
  String? inputCigarrosDia = stdin.readLineSync();
  stdout.write('Total de anos desde que começou a fumar: ');
  String? inputTotalAnos = stdin.readLineSync();

  if (inputCigarrosDia != null && inputTotalAnos != null) {
    int cigarrosDia = int.parse(inputCigarrosDia);
    int totalAnos = int.parse(inputTotalAnos);
    double totalCigarros = totalAnos * 365 * cigarrosDia * 10 / 24;

    print('O fumante perdeu ${totalCigarros.floor()} dias de vida.');
  }
}