void main() {
  List<int> vetor = [];
  for (int i = 9; i >= 0; i--) {
    vetor.add(i);
  }
  for (int i = 0; i <= 9; i++) {
    print("Posição $i = ${vetor[i]}");
  }
}