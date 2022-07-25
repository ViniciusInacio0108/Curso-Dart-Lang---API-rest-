import 'Parentes.dart';

class Conjuge {
  late String nome;
  late int idade;
  late Parentes parentes;

  Conjuge(this.nome, this.idade, this.parentes);

  Conjuge.fromJson(Map<String, dynamic> json) {
    this.nome = (json["nome"]);
    this.idade = json["idade"];
    this.parentes = Parentes.fromJson(json["parentes"]);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${this.nome} Idade: ${this.idade} Parentes: ${this.parentes}";
  }
}
