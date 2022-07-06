class Conta {
  // dados simulando um banco de dados
  var nome = "Vinícius", _saldo = 150.0, _senha = "123456";
  var nomeInput, senhaInput;

  Conta(String nomeDigitada, senhaDigitada) {
    this.nomeInput = nomeDigitada;
    this.senhaInput = senhaDigitada;
  }

  // get saldo
  double get saldo => this._saldo;

  // set saldo
  set saldo(double saldo) => this._saldo = saldo;

  void autenticar() {
    if (this.nomeInput == this.nome && this.senhaInput == this._senha) {
      print("Logado com sucesso!");
    } else {
      print("Não logado!");
    }
  }

  void depositar(valorDeDeposito) {
    this.saldo = this.saldo + valorDeDeposito;
    print("Valor total em conta após depósito é de: ${this.saldo}");
  }

  void sacar(valorDeSaque) {
    this.saldo = this.saldo - valorDeSaque;
    print("Valor total em conta após saque é de: ${this.saldo}");
  }

  void mostrarSaldo() {
    print("Seu saldo atual é de ${this.saldo}");
  }
}
