import "dart:io";

void main() {
  stdout.write("Digite o primeiro valor: ");
  String? inputPrimeiroValor = stdin.readLineSync();
  stdout.write("Digite o último valor: ");
  String? inputUltimoValor = stdin.readLineSync();
  stdout.write("Digite o incremento: ");
  String? inputIncremento = stdin.readLineSync();

  if (inputPrimeiroValor != null && inputUltimoValor != null && inputIncremento != null) {
    int primeiroValor = int.parse(inputPrimeiroValor);
    int ultimoValor = int.parse(inputUltimoValor);
    int incremento = int.parse(inputIncremento);

    if (primeiroValor < ultimoValor) {
      for (int i = primeiroValor;i <= ultimoValor; i += incremento) {
        stdout.write("$i ");
      }
    } else if (primeiroValor > ultimoValor) {
      for (int i = primeiroValor;i >= ultimoValor; i -= incremento) {
        stdout.write("$i ");
      }
    } else {
      print('O primeiro e o último valor são iguais!');
    }
    if (primeiroValor != ultimoValor) {
      print("Acabou!");
    }
  }
}