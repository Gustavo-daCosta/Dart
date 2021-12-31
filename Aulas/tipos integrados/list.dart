void main() {
  bool valorAtivo = false;

  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];
  var lista3 = null;

  var listaTotal = [0, ...lista1, ...lista2, ...?lista3];
  // listaTotal.addAll(lista1);

  print(listaTotal);
}