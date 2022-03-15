import 'animal.dart';

class Gato extends Animal{
  String nome = '';

  Gato({required this.nome, barulho}) : super(barulho: barulho);
}

