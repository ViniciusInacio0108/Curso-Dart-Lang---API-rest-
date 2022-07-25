class Conta {
  String? tipo;
  int? valor;

  Conta(this.tipo, this.valor);

  Conta.fromJson(Map<String, dynamic> json) {
    this.tipo = json["tipo"];
    this.valor = json["valor"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Valor: ${this.valor} Tipo: ${this.tipo}";
  }
}
