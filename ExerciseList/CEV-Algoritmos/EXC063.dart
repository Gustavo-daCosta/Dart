import 'dart:io';

void main() {
  bool condicao = true;
  int somaValores = 0;
  int menorValor = 0;
  int valoresPares = 0;
  int contador = 0;

  while (condicao == true) {
    contador++;
    print("="*26);
    stdout.write("Digite o $contador° valor: ");
    String? inputNumero = stdin.readLineSync();
    if (inputNumero != null) {
      int numero = int.parse(inputNumero);
      somaValores += numero;
      if (contador == 1) {
        menorValor = numero;
      } else {
        if (numero < menorValor) {
          menorValor = numero;
        }
      }
      if (numero % 2 == 0) {
        valoresPares++;
      }
    }

    print("="*26);
    stdout.write("Você deseja continuar? [S/N]: ");
    String? opcao = stdin.readLineSync();
    if (opcao != null) {
      if ("NÃO".contains(opcao.toUpperCase()) || "NAO".contains(opcao.toUpperCase())) {
        condicao = false;
      }
    }
  }
  print("="*26);
  print("Soma dos valores digitados: $somaValores");
  print("Menor valor digitado: $menorValor");
  print("Média dos valores digitados: ${somaValores/contador}");
  print("Quantidade de valores pares digitados: $valoresPares");
}