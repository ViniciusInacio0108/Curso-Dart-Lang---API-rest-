class Usuario {
  var user, cargo, senha, idade;

  /* Assim como no JS o construtor serve para que não tenhamos que ficar atribuindo 1 por 1 em diversas linhas os atributos. */

  // construtor para o usuario convencional
  Usuario(this.user, this.senha, {this.cargo = null, this.idade = 0}) {
    (this.cargo == null) ? this.cargo = "Usuário" : this.cargo;
    (this.idade == 0) ? this.idade = "Sem idade" : this.idade;
  }

  //construtor nomeado para o admin
  Usuario.admin(this.user, this.senha, {this.idade = 0}) {
    this.cargo = "Administrador";
    (this.idade == 0) ? this.idade = "Sem idade" : this.idade;
  }

  void info() {
    print(
        "Usuário: ${this.user} Senha: ${this.senha} Idade: ${this.idade} Cargo: ${this.cargo}");
  }
}
