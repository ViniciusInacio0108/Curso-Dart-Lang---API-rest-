class Filhos {
  String? nome;
  int? idade;
  List<String>? vacinas;

  Filhos(this.nome, this.idade, this.vacinas);

  Filhos.fromJson(Map<String, dynamic> json) {
    this.nome = json["nome"];
    this.idade = json["idade"];
    this.vacinas = List<String>.from(json["vacinas"]);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${this.nome} Idade: ${this.idade} Vacinas: ${this.vacinas}";
  }
}
