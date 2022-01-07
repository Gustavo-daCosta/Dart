import 'dart:io';
import 'dart:math';

void main() {
  print('''============ JOKENPO ===========
[ 1 ] PEDRA
[ 2 ] PAPEL
[ 3 ] TESOURA''');
  stdout.write('Selecione uma opção: ');
  String? inputOpcaoUsuario = stdin.readLineSync();
  print('=========== RESULTADO ==========');;

  if (inputOpcaoUsuario != null) {
    int opcaoUsuario = int.parse(inputOpcaoUsuario);
    String textOpcaoUsuario = '';
    Random random = new Random();
    int opcaoComputador = random.nextInt(3) + 1;
    String textOpcaoComputador = '';
    String vencedor = '';

    Map<int, String> jogadas = {1:'PEDRA', 2:'PAPEL', 3:'TESOURA'};
    jogadas.forEach((key, value) {
      if (opcaoUsuario == key) {
        textOpcaoUsuario = value;
      } if (opcaoComputador == key) {
        textOpcaoComputador = value;
      }
    });
    print('Sua jogada: $textOpcaoUsuario      Jogada do computador: $textOpcaoComputador');

    if ((textOpcaoUsuario == 'PEDRA' && textOpcaoComputador == 'TESOURA') || (textOpcaoUsuario == 'PAPEL' && textOpcaoComputador == 'PEDRA') || (textOpcaoUsuario == 'TESOURA' && textOpcaoComputador == 'PAPEL')) {
      print('Parabéns! Você venceu (:');
    } else if (textOpcaoUsuario == textOpcaoComputador) {
      print('Empate! Ambos fizeram a mesma jogada.');
    } else {
      print('Infelizmente você perdeu ):');
    }
  }
}