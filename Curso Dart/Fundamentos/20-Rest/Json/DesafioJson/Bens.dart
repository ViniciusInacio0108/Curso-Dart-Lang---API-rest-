import 'Veiculos.dart';
import 'Imovel.dart';

class Bens {
  List<Veiculos>? veiculos;
  List<Imovel>? imovel;

  Bens(this.veiculos, this.imovel);

  Bens.fromJson(Map<String, dynamic> json) {
    this.veiculos = (json["veiculos"] as List<dynamic>)
        .map((e) => Veiculos.fromJson(e))
        .toList();
    ;
    this.imovel = (json["imoveis"] as List<dynamic>)
        .map((e) => Imovel.fromJson(e))
        .toList();
    ;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Veiculos: ${this.veiculos} Imovel: ${this.imovel}";
  }
}
