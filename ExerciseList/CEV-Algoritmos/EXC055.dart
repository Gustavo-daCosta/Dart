import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int randomNumber = random.nextInt(9) + 1;
  for (int tentativas = 3; tentativas >= 0; tentativas--) {
    stdout.write("Digite um número entre 1 e 10: ");
    String? inputNumero = stdin.readLineSync();
    if (inputNumero != null) {
      int numero = int.parse(inputNumero);
      if (numero == randomNumber) {
        print('Parabéns! Você acertou o número!');
        break;
      } else if (tentativas != 0){
        print("Você errou! Restam $tentativas tentativa(s).");
      } else {
        print("Você errou todas as tentativas. O número era $randomNumber");
      }
    }
  }
}