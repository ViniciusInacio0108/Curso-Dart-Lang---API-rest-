import 'Parentes.dart';
import 'Bens.dart';
import 'Conjuge.dart';
import 'Filhos.dart';

class Pessoa {
  String? nome;
  int? idade;
  List<String>? tarefas;
  Parentes? parentes;
  Conjuge? conjuge;
  List<Filhos>? filhos;
  Bens? bens;

  Pessoa(this.nome, this.idade, this.tarefas, this.parentes, this.conjuge,
      this.filhos, this.bens);

  Pessoa.fromJson(Map<String, dynamic> json) {
    this.nome = json["nome"];
    this.idade = json["idade"];
    this.tarefas = List<String>.from(json["tarefas"]);
    this.parentes = Parentes.fromJson(json["parentes"]);
    this.conjuge = Conjuge.fromJson(json["conjuge"]);
    this.filhos = (json["filhos"] as List<dynamic>)
        .map((e) => Filhos.fromJson(e))
        .toList();
    this.bens = Bens.fromJson(json["bens"]);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${this.nome} \n Idade: ${this.idade} \n Parentes: ${this.parentes} \n Tarefas: ${this.tarefas} \n Conjuge: ${this.conjuge} \n Filhos: ${this.filhos} \n Bens: ${this.bens}";
  }
}
