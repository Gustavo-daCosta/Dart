import 'src/cachorro.dart';
import 'src/gato.dart';
import 'src/passaro.dart';

void main(List<String> arguments) {
  Gato gato = Gato(nome: "Jorge", barulho: "Miau");
  print("O gato ${gato.nome} faz ${gato.barulho}");

  Cachorro cachorro = Cachorro(nome: "Carlos", barulho: "Au Au");
  print("O cachorro ${cachorro.nome} faz ${gato.barulho}");

  Passaro passaro = Passaro(nome: "Tony", barulho: "Piu Piu");
  print("O passáro ${passaro.nome} faz ${passaro.barulho}");
}