class Multa {
  String? descrisao, tipo;
  int? pontos;

  Multa(this.descrisao, this.tipo, this.pontos);

  Multa.fromJson(Map<String, dynamic> json) {
    this.tipo = json["tipo"];
    this.descrisao = json["descrisao"];
    this.pontos = json["pontos"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Descrição: ${this.descrisao} Pontos: ${this.pontos} Tipo: ${this.tipo}";
  }
}
