import 'dart:core';
import 'dart:mirrors';
import 'minha_lib.dart';

void main() {
  Symbol libraryName = Symbol('minha_lib');
  Symbol className = Symbol('CustomLib');

  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libraryName);
  ClassMirror classMirror = libraryMirror.declarations[className] as ClassMirror;

  final methods = classMirror.instanceMembers;
  print('Quantidade de Métodos ${methods.length}');

  methods.forEach((symbol, method) {
    print(symbol);
  });
}