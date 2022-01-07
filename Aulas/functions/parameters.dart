void main() {
  criarLogin('bruce@dc.com.br', 'Batman');
  criarLogin('bruce@dc.com.br');

  adicionarUsuario(
    nome: 'Bruce Wayne',
    email: 'bruce@dc.com.br',
    idade: 35, cep:
    '12244-556'
  );
}

void criarLogin(String email, [String? senha = '123456']) { // null safety
  print('=> : $email ${senha == null ? '123456' : senha}');
}

void adicionarUsuario({required String nome, required String email, required int idade, required String cep}) {
  print('Adicionar usuário: $nome, $email, $idade, $cep');
}