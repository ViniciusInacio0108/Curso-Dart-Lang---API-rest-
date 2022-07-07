import 'dart:math';

import 'Static.dart';

void main() {
  print("11.2) Singletons Factory\n");

  /*  */
  print(PessoaInstancia.instancia.nome);
  PessoaInstancia.instancia.nome = "Vini";
  print(PessoaInstancia.instancia.nome);
}

class PessoaInstancia {
  static PessoaInstancia instancia = PessoaInstancia();
  var nome;
  var _identidade;

  factory PessoaInstancia({String nome = "Indefinido", identidade}) {
    identidade = (identidade == null)
        ? identidade = Random().nextInt(99999999 + 1)
        : identidade;
    return instancia = new PessoaInstancia._construtorPrivado(nome, identidade);
  }

  PessoaInstancia._construtorPrivado(this.nome, this._identidade);

  get identidade => _identidade;
}
