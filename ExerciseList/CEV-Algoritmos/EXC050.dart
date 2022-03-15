import 'dart:math';

void main() {
  var random = Random();
  List<int> numerosSorteados = [];
  List<int> numMaiorCinco = [];
  List<int> numDivTres = [];

  for (int i = 0; i <= 20; i++) {
    int numero = random.nextInt(10) + 1;
    numerosSorteados.add(numero);
    if (numero > 5) {
      numMaiorCinco.add(numero);
    }
    if (numero % 3 == 0) {
      numDivTres.add(numero);
    }
  }
  print('Números sorteados: $numerosSorteados');
  print('Números sorteados maiores que cinco: $numMaiorCinco');
  print('Números sorteados divísiveis por 3: $numDivTres');
}