import 'dart:io';

void main() {
  int soma = 0;
  for (int i = 6; i <= 100; i += 2) {
    stdout.write("$i + ");
    soma += i;
  }
  print("Acabou!");
  print("Soma dos valores: $soma");
}