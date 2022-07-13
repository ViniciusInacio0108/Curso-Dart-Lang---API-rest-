/* 

*Conceito
 - Mixin permite implementar atributos e métodos de outras classes.

*Regras
  - Deve ser implementado antes das Interfaces
  - Tanto faz se vem de uma classe concreta ou abstrata
  - Não pode vir de uma classe que estenda ou uma classe já mixin
  - Pode usar mais de um, não obrigatório a instanciação de todos os métodos ou atributos
  - As classes com métodos iguais serão sobrescritas até a classe herdeira

* ON
 - É obrigatório declarar sua classe como mixin
 - Restringi o uso de mixin a classe que estendem ou implementam a classe declarada  

*/

// Classe pai
abstract class Cidadao {
  String nome;

  Cidadao(this.nome) {}

  void objetivosPessoais();

  void direitoDeveres() {
    print("Todo cidadão tem direitos e deveres.");
  }
}

// interface 1
abstract class Precidenciavel {
  var partido;
  var ideologia;

  void ideologiaPolitica();
}

// Interface 2
class Postagem {
  var postagem;

  void escreverPostagem() {
    print("");
  }
}

//MIXINS
mixin Elegivel on Cidadao {
  void candidatoElegivel();
}

abstract class Conta {
  var _saldo, salario = 33000;

  get saldo => this._saldo;
  set depositar(double saldo) => this._saldo = saldo;
}

// Classe final
class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Precidenciavel {
  // INTERFACES
  @override
  var ideologia;

  @override
  var partido;

  @override
  var postagem;

  Candidato(String nome) : super(nome) {
    direitoDeveres();
  }

  @override
  void escreverPostagem() {
    print("$nome postou: $postagem");
  }

  @override
  void ideologiaPolitica() {
    print("$nome é do lado de $ideologia do partido $partido");
  }

  @override
  void objetivosPessoais() {
    print("Tem como objetivo: O sucesso!");
  }

  // MIXIN
  @override
  void candidatoElegivel() {
    super.depositar = 395000;
    if (super.salario > super.saldo / 12) {
      print("Candidato elegível!");
    } else {
      print("Candidato não elegível!");
    }
  }
}

// Main
void main() {
  print("15.0) Mixin\n");

  var lula = Candidato("Lula");
  lula
    ..ideologia = "Esquerda"
    ..partido = "PT"
    ..postagem = "Já perdi pro Ciro"
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..objetivosPessoais()
    ..candidatoElegivel();
}
