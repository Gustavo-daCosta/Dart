// código copiado da documentação da linguagem

void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void main() {
  Function x;

  // Comparing top level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2).
  // so they're equal
  assert(y.baz == x);
  print(y.baz == x);

  // These closures refer to diferente instances.
  // so they're unequal
  assert(v.baz != w.baz);
  print(v.baz != w.baz);
}