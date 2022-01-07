// Functions as FCO (first-class objects) ou funções como parâmetros de outra função

void printElement(int element) => print(element);

void main() {
  var list = [1, 2, 3];

  list.forEach((element) {
    print(element);
  });
}