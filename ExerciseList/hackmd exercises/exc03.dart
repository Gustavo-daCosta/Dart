import 'dart:math';

void main() {
  List numbers = [];
  var range = new Random();
  for (var i = 0; i < 10; i++) {
    numbers.add(range.nextInt(10));
  }
  print(numbers);
  for (var i = 0; i < 10; i++) {
    if (numbers[i] < 5) {
      print(numbers[i]);
    }
  }
}