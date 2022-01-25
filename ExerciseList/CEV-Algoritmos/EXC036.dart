import 'dart:io';

void main() {
  stdout.write('Total de horas de atividade física no mês: ');
  String? inputHorasAtv = stdin.readLineSync();

  if (inputHorasAtv != null) {
    int horasAtividade = int.parse(inputHorasAtv);
    int pontos = 0;

    if (horasAtividade <= 10) {
      pontos = horasAtividade * 2;
    } else if (horasAtividade <= 20) {
      pontos = horasAtividade * 5;
    } else {
      pontos = horasAtividade * 10;
    }
    double valorGanho = pontos * 0.05;
    print('Total de pontos ganhos: $pontos pontos');
    print('Valor ganho: R\$${valorGanho.toStringAsFixed(2)}');
  }
}