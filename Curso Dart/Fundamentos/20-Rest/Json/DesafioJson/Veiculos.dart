import 'Caracteristicas.dart';
import 'Multa.dart';

class Veiculos {
  String? marca, modelo;
  Caracteristica? caracteristicas;
  List<Multa>? multas;

  Veiculos(this.marca, this.modelo, this.caracteristicas, this.multas);

  Veiculos.fromJson(Map<String, dynamic> json) {
    this.marca = json["marca"];
    this.modelo = json["modelo"];
    this.caracteristicas = Caracteristica.fromJson(json["caracteristicas"]);
    this.multas = (json["multas"] as List<dynamic>)
        .map((e) => Multa.fromJson(e))
        .toList();
    ;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Marca: ${this.marca} Modelo: ${this.modelo} Característica: ${this.caracteristicas} Multas: ${this.multas}";
  }
}
