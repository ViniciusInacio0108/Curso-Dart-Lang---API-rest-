import 'Conta.dart';

class Imovel {
  String? tipo, endereco;
  List<Conta>? contas;

  Imovel(this.tipo, this.endereco, this.contas);

  Imovel.fromJson(Map<String, dynamic> json) {
    this.tipo = json["tipo"];
    this.endereco = json["endereco"];
    this.contas = (json["contas"] as List<dynamic>)
        .map((e) => Conta.fromJson(e))
        .toList();
    ;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Contas: ${this.contas} Endereço: ${this.endereco} Tipo: ${this.tipo}";
  }
}
