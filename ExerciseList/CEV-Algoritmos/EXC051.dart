import 'dart:io';

void main() {
  double maiorValor = 0;
  double menorValor = 0;

  for (int i = 0; i < 8; i++) {
    stdout.write("Digite o valor do ${i+1}° produto: ");
    String? inputValorProduto = stdin.readLineSync();
    if (inputValorProduto != null) {
      double valorProduto = double.parse(inputValorProduto);
      if (i == 0) {
        maiorValor = valorProduto;
        menorValor = valorProduto;
      } else {
        if (valorProduto > maiorValor) {
          maiorValor = valorProduto;
        }
        if (valorProduto < menorValor) {
          menorValor = valorProduto;
        }
      }
    }
  }
  print("="*25);
  print("Menor valor digitado: R\$$menorValor");
  print("Maior valor digitado: R\$$maiorValor");
}