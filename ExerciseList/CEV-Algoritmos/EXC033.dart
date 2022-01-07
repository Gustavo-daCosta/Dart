import 'dart:io';

void main() {
  print('======= EMPRÉSTIMO BANCÁRIO ======');
  stdout.write('Valor da casa: R\$');
  String? inputValorCasa = stdin.readLineSync();
  stdout.write('Salário do comprador: R\$');
  String? inputSalario = stdin.readLineSync();
  stdout.write('O pagamento será feito em quantos anos? ');
  String? inputTempoPagamento = stdin.readLineSync();

  if (inputValorCasa != null && inputTempoPagamento != null && inputSalario != null) {
    double valorCasa = double.parse(inputValorCasa);
    double salario = double.parse(inputSalario);
    int tempoPagamento = int.parse(inputTempoPagamento);
    double prestacaoMensal = valorCasa / (tempoPagamento * 12);

    if ((salario * 0.30) > prestacaoMensal) {
      print('Seu empréstimo bancário foi aprovado!');
      print('Valor da prestação mensal: R\$${prestacaoMensal.toStringAsFixed(2)}');
    } else {
      print('Infelizmente o seu empréstimo bancário foi negado.');
    }
  }
}