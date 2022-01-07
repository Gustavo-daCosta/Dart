void main() {
  Function minhaFuncao = (){
    print('Minha função');
  };
  minhaFuncao();

  // O void significa que a função não retorna nada
  void Function() Funcao1 = () {
    print('Função 1');
  };
  Funcao1();

  num Function(num, num) getSoma = (num v1, num v2) {
    return v1 + v2;
  };
  print('Soma: ${getSoma(2, 3)}');

  void Funcao2() {
    print('Função 2');
  }
  Funcao2();
  print('Subtração: ${getSub(10, 4)}');
}

num getSub(num v1, num v2) {
  return v1 - v2;
}