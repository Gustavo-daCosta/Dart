import 'dart:io';

void main() {
  for (int i = 30; i >= 1; i--) {
    if (i % 4 != 0) {
      stdout.write('$i ');
    } else {
      stdout.write('[$i] ');
    }
  }
  print('Acabou!');
}