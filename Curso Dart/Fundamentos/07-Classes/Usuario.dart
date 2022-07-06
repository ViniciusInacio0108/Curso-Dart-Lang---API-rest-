class Usuario {
  // simulamos aqui os dados de um banco de dados
  String usuario = "Vinícius";
  String senha = "123456";
  int id = 0;

  // vai printar as infos do usuario do banco de dados
  void info() {
    print("Nome: $usuario Senha: $senha ID: $id");
  }

  // vai autenticar o usuario baseado com o banco de dados
  void autenticarUsuario(usuario, senha) {
    if (this.usuario == usuario && this.senha == senha) {
      print("Autenticado");
    } else {
      print("Não autenticado");
    }
  }
}
