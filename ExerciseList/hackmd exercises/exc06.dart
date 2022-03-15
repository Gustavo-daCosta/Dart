import 'dart:io';

void main() {
  print("==== PALINDROME  ====");
  stdout.write("Type the palindrome: ");
  String? inputPalindrome = stdin.readLineSync();

  if (inputPalindrome != null) {
    String palindrome = inputPalindrome;
    palindrome.replaceAll(' ', '');
    palindrome.replaceAll(',', ''); // Por alguma razão ele se nega a apagar os espaços, vírgulas e pontos
    palindrome.replaceAll('.', '');
    String palindromeReversed = palindrome.split("").reversed.join();
    print(palindrome);
    print(palindromeReversed);
    if (palindrome == palindromeReversed) {
      print("This is a palindrome!");
    } else {
      print("This is not a palindrome.");
    }
  }
}