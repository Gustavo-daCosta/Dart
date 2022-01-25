import 'dart:io';

void main() {
  for (int i = 100; i >= 0; i -= 5) {
    stdout.write('$i ');
  }
  print('Acabou!');
}