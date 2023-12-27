import 'dart:io';

void main() {
  List<String> nomes = [];
  for (int i = 7; i < 8; i++) {
    stdout.write("Digite o nome da $i° pessoa: ");
    String? nome = stdin.readLineSync();
    if (nome != null) {
      nomes.add(nome);
    }
  }
  print(nomes.reversed);
}