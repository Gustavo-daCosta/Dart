import 'dart:io';

void main() {
  double somaAltura = 0;
  int pessoasPeso90 = 0;
  int pessoasMenos50kgMais160 = 0;
  int pessoasMais100kgMais190 = 0;

  for (int i = 1; i <= 7; i++) {
    stdout.write('Digite o peso da $i° pessoa: ');
    String? inputPeso = stdin.readLineSync();
    stdout.write('Digite a altura da $i° pessoa: ');
    String? inputAltura = stdin.readLineSync();

    if (inputPeso != null && inputAltura != null) {
      double peso = double.parse(inputPeso);
      double altura = double.parse(inputAltura);
      somaAltura += altura;
      if (peso > 90) {pessoasPeso90++;}
      if (peso < 50 && altura < 1.60) {pessoasMenos50kgMais160++;}
      if (peso > 100 && altura > 1.90) {pessoasMais100kgMais190++;}
    }
  }
  print('='*25);
  print('Média de altura do grupo: ${somaAltura/7}');
  print('Total de pessoas que pesam mais de 90Kg: $pessoasPeso90');
  print('Total de pessoas que pesam menos de 50Kg e medem mais de 1.60m: $pessoasMenos50kgMais160');
  print('Total de pessoas que pesam mais de 100Kg e medem mais de 1.90m: $pessoasMais100kgMais190');
}