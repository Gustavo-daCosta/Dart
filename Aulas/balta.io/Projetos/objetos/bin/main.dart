import 'src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa(nome: "Gustavo", idade: 15, genero: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.genero);
  print(pessoa.outroNome);
  
  print(pessoa.peso);
  print(pessoa.altura);
}