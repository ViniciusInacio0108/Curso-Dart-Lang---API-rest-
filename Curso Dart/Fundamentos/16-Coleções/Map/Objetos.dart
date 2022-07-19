import 'dart:collection';

class Carro {
  String marca, modelo;
  Carro(this.marca, this.modelo);

  // aqui eu fiz o override do metodo padrao toString() para parar de printar um "Instance of ..." no console e printar o objeto
  @override
  String toString() {
    return '{${marca}, ${modelo}}';
  }
}

mapObjetos() {
  print("16.3.5 Objetos\n");

  Carro c1 = Carro("Toyota", "Corolla");
  Carro c2 = Carro("Honda", "Civic");
  Carro c3 = Carro("Fiat", "Palio");

  Map<String, Carro> carros = {"0": c1, "1": c2, "2": c3};

  // se a chave for em ordem podemos usar o for in
  for (var chave in carros.keys) {
    var carro = carros[chave];
    // print(carro.marca); // vai dar erro por algum motivo
  }
}

void main() {
  mapObjetos();
}
