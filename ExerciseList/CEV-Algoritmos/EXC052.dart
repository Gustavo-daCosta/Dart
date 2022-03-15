import 'dart:io';

void main() {
  int pessoasMaior18 = 0;
  int pessoasMenor5 = 0;
  int maiorIdade = 0;
  int somaIdade = 0;

  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite a idade da $i° pessoa: ");
    String? inputIdade = stdin.readLineSync();
    if (inputIdade != null) {
      int idade = int.parse(inputIdade);
      if (i == 1) {
        maiorIdade = idade;
      } else {
        if (idade > maiorIdade) {
          maiorIdade = idade;
        }
      }
      somaIdade += idade;
      if (idade > 18) {
        pessoasMaior18++;
      }
      if (idade < 5) {
        pessoasMenor5++;
      }
    }
  }
  print('='*25);
  print('Média de idade do grupo: ${somaIdade/10} anos');
  print('Pessoas com mais de 18 anos: $pessoasMaior18 pessoas');
  print('Pessoas com menos de 5 anos: $pessoasMenor5 pessoas');
  print('Maior idade lida: $maiorIdade anos');
}