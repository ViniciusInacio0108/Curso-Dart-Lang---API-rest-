class Usuario {
  var user;
  var _senha;
  Usuario(user, senha) {
    this._senha = senha;
  }

  // getter padrao
  String get senha {
    return _senha;
  }

  // setter padrao
  set senha(String senha) {
    _senha = senha;
    print("Senha alterada!");
  }
}
