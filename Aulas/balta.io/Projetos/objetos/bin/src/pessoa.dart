import 'humano.dart';

class Pessoa extends Humano{
  String nome;
  int idade;
  String genero;

  // Exemplo de declaração de variável local
  String _nomeLocal = "Jorge";

  // Exemplo de variável que não pode ser modificada, ela sempre vai ter o valor dado a ela na declaração
  final String outroNome = "José";

  Pessoa({required this.nome, required this.idade, required this.genero});
}