void main() {
  var nome = 'gustavo';

  var modificarNome = () {
    print(nome.toUpperCase());
  };

  modificarNome();

  var addNumero = (int i) {
    return (int y) => i + y;
  };

  var addNumero5 = addNumero(5);
  print(addNumero5);

  var resultado = addNumero5(5);
  print(resultado);
  // ISSO É INCRÍVEL
}