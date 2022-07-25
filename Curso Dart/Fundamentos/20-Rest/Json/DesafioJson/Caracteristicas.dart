class Caracteristica {
  String? tipo;
  int? passageiros;

  Caracteristica(this.tipo, this.passageiros);

  Caracteristica.fromJson(Map<String, dynamic> json) {
    this.tipo = json["tipo"];
    this.passageiros = json["passageiros"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Passageiros: ${this.passageiros} Tipo: ${this.tipo}";
  }
}
