import 'dart:io' show stdin, stdout;

void main() {
  int contador = 0;
  int somaIdades = 0;
  int pessoasMais21anos = 0;
  bool condicao = true;

  while (condicao == true) {
    contador++;
    print("========== $contador° PESSOA ==========");
    stdout.write("Idade: ");
    String? inputIdade = stdin.readLineSync();
    if (inputIdade != null) {
      int idade = int.parse(inputIdade);
      somaIdades += idade;
      if (idade > 21) {pessoasMais21anos++;}
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
  print("Foram digitadas $contador idades");
  print("Média das idades digitadas: ${somaIdades/contador} anos");
  print("Total de pessoas com mais de 21 anos: $pessoasMais21anos pessoas");
}