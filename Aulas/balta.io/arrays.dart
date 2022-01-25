import 'dart:io';

void main() {
  var nome = [];
  bool condicao = true;

  while (condicao == true) {
    stdout.write('Digite um nome: ');
    String? inputText = stdin.readLineSync();

    if (inputText != null) {
      String text = inputText;

      if (text.toLowerCase() == 'sair') {
        condicao = false;
      } else {
        nome.add(text);
      }
    }
    print('Nome: $nome\n');
  }
}