void main() {
  String string1 = 'Dart';
  String string2 = "Dart";
  String string3 = ''' Linguagem Dart ''';
  String string4 = """ Linguagem Dart """;
  String string5 = '''
  ---
  Linguagem
  Dart
  ---
  ''';

  print('$string1, $string2, $string3, $string4');
  print(string5);

  String string6 = 'It\'s great';
  string6 = "It's great";
  print(string6);

  // Concatenação de Strings
  String string7 = "Estou estudando" " a Linguagem Dart";
  print(string7);

  // Interpolação de Strings
  String linguagem = 'Dart';
  String mensagem = "Estou estudando a Linguagem $linguagem";
  print(mensagem);

  // Tratamento de Strings
  String string8 = 'Dart';
  String string9 = "Estou estudando a Linguagem ${string8.toUpperCase()}";
  print(string9);
}