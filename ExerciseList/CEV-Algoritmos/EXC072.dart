void main() {
  List<int> vetor = [];
  for (int i = 5; i <= 50; i += 5) {
    vetor.add(i);
  }
  for (int i = 0; i <= 9; i++) {
    print("Posição $i = ${vetor[i]}");
  }
}