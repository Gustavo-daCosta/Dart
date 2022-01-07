import 'dart:io';

void main() {
  stdout.write('Digite o ano do seu nascimento: ');
  String? inputAnoNasc = stdin.readLineSync();

  if (inputAnoNasc != null) {
    int idade = 2022 - int.parse(inputAnoNasc);

    if (idade < 16) {
      print('Você ainda não tem idade suficiente para votar.');
    } else if ((idade == 16 || idade == 17) || (idade >= 60)) {
      print('Você tem idade para votar, mas o voto não é obrigatório.');
    } else if (idade >= 18 && idade < 60) {
      print('Você tem idade para votar, e o voto é obrigatório!');
    }
  }
}