import 'dart:io';

void main() {
  List<int> vetor = [];
  for (int i = 0; i <= 9; i++) {
    if (i % 2 == 0 || i == 0) {
      vetor.add(3);
    } else {
      vetor.add(5);
    }
  }
  for (int i = 0; i < vetor.length; i++) {
    stdout.write("${vetor[i]} ");
  }
  print("");
  for (int i = 0; i < vetor.length; i++) {
    stdout.write("$i ");
  }
}