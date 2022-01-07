import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite um número entre 1 e 5: ');
  String? inputNumero = stdin.readLineSync();

  if (inputNumero != null) {
    int numero = int.parse(inputNumero);
    Random random = new Random();
    int numRandom = random.nextInt(5) + 1;
    if (numero == numRandom) {
      print('Parabéns! Você adivinhou o número sorteado.');
    } else {
      print('Infelizmente você errou. O número sorteado era $numRandom');
    }
  }
}