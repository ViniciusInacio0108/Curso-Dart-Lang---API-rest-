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
abstract class Artista {
  void acao() => print("Dentro de Artista");
}

// Mixins
mixin Cantor on Artista {
  void acao() => print("Dentro de Cantor!");
}

abstract class Dancarino {
  void acao() => print("Dentro de Dancarino");
}

// Interface
abstract class Acao {
  void executar();
}

// Classe concreta
class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print("Dentro de Musico");

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// aqui não pude implementar Cantor pois MC não extende de um Artista que é a classe que o Cantor faz Mixin das extensões
class MC with Dancarino implements Acao {
  void acao() => print("Dentro de MC");

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// Main
void main() {
  print("15.1) MixinON \n");

  Musico musico = Musico();
  // aqui ele vai printar primeiramente cantor pois é a classe mais profunda de toda herança (Herança em ordem: Artista > Dancarino > Cantor)
  musico.executar();

  print("\n");

  MC mc = MC();
  // Aqui ele printa o de Dancarino pois não tem mais profundo que isso, e o de sua própria classe
  mc.executar();
}
