import 'dart:io';

List<String> produtos = [];
void main() {
  bool condicao = true;

  while (condicao == true) {
    print('==== ADICIONE UM PRODUTO ====');

    String? inputText = stdin.readLineSync();
    if (inputText != null) {
      String text = inputText;
      if (text == "sair") {
        print('==== TERMINOU O PROGRAMA ====');
        condicao = false;
      } else if (text == "imprimir") {
        imprimir();
      } else if (text == "remover"){
        remover();
      } else {
        produtos.add(text);
        print("\x1B[2J\x1B[0;0H");
      }
    }
  }
}

void imprimir() {
  for (int i = 0; i < produtos.length; i++) {
    print('ITEM $i - ${produtos[i]}');
  }
}

void remover() {
  print('==== REMOVER ITEM ====');
  imprimir();
  stdout.write('Qual item deseja remover? ');
  String? inputItem = stdin.readLineSync();
  if (inputItem != null) {
    int item = int.parse(inputItem);
    produtos.removeAt(item);
    print('==== ITEM REMOVIDO ====');
  }
}