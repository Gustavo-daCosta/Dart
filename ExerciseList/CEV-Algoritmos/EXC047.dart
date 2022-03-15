import 'dart:io';

void main() {
  int soma = 0;
  for (int i = 500; i >= 0; i -= 50) {
    stdout.write("$i + ");
    soma += i;
  }
  print("Acabou!");
  print("Soma dos valores: $soma");
}