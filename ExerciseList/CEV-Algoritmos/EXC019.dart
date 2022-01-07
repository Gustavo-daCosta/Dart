import 'dart:io';

void main() {
  stdout.write('Nome do aluno: ');
  String? inputNome = stdin.readLineSync();
  stdout.write('Nota 1: ');
  String? inputNota1 = stdin.readLineSync();
  stdout.write('Nota 2: ');
  String? inputNota2 = stdin.readLineSync();

  if ((inputNome != null) && (inputNota1 != null) && (inputNota2 != null)) {
    String nome = inputNome;
    double nota1 = double.parse(inputNota1);
    double nota2 = double.parse(inputNota2);
    double media = (nota1 + nota2) / 2;

    print('=========================================');
    print('Nome do aluno: $nome');
    print('Média do aluno: ${media.toStringAsFixed(1)}');
    if (media >= 7) {
      print('O aluno teve um bom aproveitamento!');
    } else {
      print('O aluno não teve um bom aproveitamento.');
    }
  }
}