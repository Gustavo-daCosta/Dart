void main() {
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  void outraFuncao(String text) {
    print(text);
  };
  outraFuncao('Hello, World!');
}