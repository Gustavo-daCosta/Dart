class Pessoa {
  String nome = '';
  int idade = 0;
  double altura = 0;
  double peso = 0;

  // Método 1: Calcular IMC
  double imc() => peso / (altura*altura);

  // Método 2: Verificar se é maior de idade
  bool maiorDeIdade() => idade >= 18;
}