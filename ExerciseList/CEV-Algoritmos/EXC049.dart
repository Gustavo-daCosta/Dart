import 'dart:io';

void main() {
  int pares = 0;
  List<int> listaPares = [];
  int impares = 0;
  List<int> listaImpares = [];

  for (int i = 1; i <= 7; i++) {
    stdout.write("Digite o $i° valor: ");
    String? inputValor = stdin.readLineSync();

    if (inputValor != null) {
      int valor = int.parse(inputValor);
      if (valor % 2 == 0) {
        pares += 1;
        listaPares.add(valor);
      } else {
        impares += 1;
        listaImpares.add(valor);
      }
    }
  }
  print('-'*25);
  print("Foram digitados $pares valores pares, sendo eles: $listaPares.");
  print("Foram digitados $impares valores ímpares, sendo eles: $listaImpares.");
}