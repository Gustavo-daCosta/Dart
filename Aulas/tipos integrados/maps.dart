void main() {
  Map<String, String> comentarios = Map<String, String>();
  comentarios['Java'] = 'Comentario Java';
  comentarios['Dart'] = 'Comentario Dart';
  comentarios['C#'] = 'Comentario C#';

  comentarios.keys.forEach((element) {
    print(element);
  });

  comentarios.forEach((key, value) {
    print('$key => $value');
  });

  for (var entry in comentarios.entries) {
    print(entry);
  }

  Map<String, List<String>> livros = Map<String, List<String>>();

  livros['Java'] = ['Livro Java 1', 'Livro Java 2', 'Livro Java 3'];
  livros['Dart'] = ['Livro Dart 1', 'Livro Dart 2', 'Livro Dart 3'];
  livros['Javascript'] = ['Livro Javascript 1', 'Livro Javascript 2', 'Livro Javascript 3'];

  livros.forEach((key, value) {
    print('''
      ${key}
        ${value}
    ''');
  });

  Map<String, List<String>>? teste = null;
  var novosLivros = {...livros, ...?teste};
  print(novosLivros);
}