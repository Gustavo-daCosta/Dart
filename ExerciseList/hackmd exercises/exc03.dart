import 'dart:math';

void main() {
  List<int> valueList = [];
  var random = new Random();
  for (var i = 0; i <= (random.nextInt(11) + 10); i++) {
    valueList.add(random.nextInt(10));
  }
  print('Lista: $valueList');
  print('Valores menores que 5:');
  for (var i in valueList) {
    if (valueList[i] < 5) {
      print('Valor $i da lista = ${valueList[i]}');
    }
  }
}