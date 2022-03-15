import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

cadastrarPessoa() {
  bool condicao = true;

  while (condicao == true) {
    stdout.write("Digite um comando: ");
    String? comando = stdin.readLineSync();

    if (comando != null) {
      if (comando == "sair") {
        print("==== PROGRAMA FINALIZADO ====");
        condicao = false;
      } else if (comando == "cadastro") {
        print("\x1B[2J\x1B[0;0H");
        cadastrar();
      } else if (comando == "imprimir") {
        print(cadastros);
      } else {
        print("Esse comando não existe.");
      }
    }
  }
}

void cadastrar() {
  Map<String, dynamic> cadastro = {};

  stdout.write("Digite o seu nome: ");
  String? nome = stdin.readLineSync();
  stdout.write("Digite a sua idade: ");
  String? idade = stdin.readLineSync();
  stdout.write("Digite a sua cidade: ");
  String? cidade = stdin.readLineSync();
  stdout.write("Digite o seu estado: ");
  String? estado = stdin.readLineSync();

  if ((nome != null) && (idade != null) && (cidade != null) && (estado != null)) {
    cadastro["nome"] = nome;
    cadastro["idade"] = idade;
    cadastro["cidade"] = cidade;
    cadastro["estado"] = estado;
    cadastros.add(cadastro);
  }
}