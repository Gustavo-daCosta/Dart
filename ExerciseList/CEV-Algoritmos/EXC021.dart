import 'dart:io';

void main() {
  stdout.write('Digite um ano qualquer: ');
  String? inputAno = stdin.readLineSync();

  if (inputAno != null) {
    int ano = int.parse(inputAno);
    bool verif1 = false;
    bool verif2 = false;
    if ((ano % 4 == 0) && (ano % 100 != 0)) {
      verif1 = true;
    }
    if ((ano % 4 == 0) && (ano % 100 == 0) && (ano % 400 == 0)) {
      verif2 = true;
    }
    if (verif1 == true || verif2 == true) {
      print('O ano $ano é bissexto!');
    } else {
      print('O ano $ano não é bissexto.');
    }
  }
}