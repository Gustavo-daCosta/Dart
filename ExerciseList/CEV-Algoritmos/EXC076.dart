import 'dart:math';

void main() {
  List<int> vetor = [];
  var randomNum = Random();
  for (int i = 0; i <= 7; i++) {
    vetor.add(randomNum.nextInt(10));
  }
  print(vetor);
}