import 'dart:io';

void main() {
  /*
  for (int i = 0; i <= 10; i++) {
    print("loop for // $i");
  }
  */

  bool condicao = true;
  

  while (condicao == true){
    stdout.write('Escreva um texto: ');
    String? inputText = stdin.readLineSync();

    if (inputText != null) {
      String text = inputText;
      if (text.toLowerCase() == "sair") {
        print("Programa finalizado");
        condicao = false;
      } else {
        print('Você digitou $text');
      }
    }
  }
}