import 'dart:io';

main() {
  // Pergunta a idade da pessoa
  // Se a iade for maior ou igual a 18
  //    Ele é maior de idade
  // Se não for
  //    Ele não é maior de idade

  print('========= Digite uma idade ===========');
  var input = stdin.readLineSync();
  if (input != null) {
    var idade = int.parse(input);
    if (idade >= 50) {
      print('Melhor idade');
    } else if (idade >= 18) {
      print('adulto');
    } else if (idade >= 12) {
      print('Adolescente');
    } else {
      print('Criança');
    }
  }
}