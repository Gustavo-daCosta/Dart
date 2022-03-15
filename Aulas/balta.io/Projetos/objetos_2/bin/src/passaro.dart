import 'animal.dart';

class Passaro extends Animal {
  String nome = '';

  Passaro({required this.nome, barulho}) : super(barulho: barulho);
}