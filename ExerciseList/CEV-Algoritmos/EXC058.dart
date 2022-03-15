import 'dart:io';

void main() {
  int totalAlunos = 0;
  int somaIdade = 0;
  int cont = 0;
  bool condicao = true;

  while (condicao == true) {
    cont ++;
    stdout.write("Digite a idade do $cont° aluno (999 para parar): ");
    String? inputIdade = stdin.readLineSync();
    if (inputIdade != null) {
      int idade = int.parse(inputIdade);
      if (idade == 999) {
        condicao = false;
      } else {
        somaIdade += idade;
        totalAlunos++;
      }
    }
  }
  double mediaIdade = somaIdade/totalAlunos;
  print("="*35);
  print("Quantidade de alunos na turma: $totalAlunos alunos");
  print("Média de idade da turma: $mediaIdade anos");
}