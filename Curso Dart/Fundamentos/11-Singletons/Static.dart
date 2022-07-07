/* Singletons nada mais é do que um padrão de projeto onde você criar apenas uma instancia padrão e que não poderá ser criado nenhum outro objeto daquela classe */
void main() {
  print("11.0) Singletons Static \n");

  // consigo acessar o meu nome dentro da instancia sem precisar criar nenhum tipo de objeto, apenas usando a instancia 'instancia'.
  print(Pessoa.instancia.nome);

  //var pessoa1 = Pessoa(); // esse código da erro justamente por não ter um construtor padrão dentro da classe Pessoa.

  // para provar que com o Pessoa.intancia criado por nós não é possível fazer com que tenhamos novos objetos.
  //Apesar de criar dois aqui, eles agem como um só e como variáveis que receberam o valor e não objetos únicos da classe
  var pessoa1 = Pessoa.instancia;
  pessoa1.nome = "Kelly";
  var pessoa2 = Pessoa.instancia;
  pessoa2.nome = "Ana";
  print("${pessoa1.nome} ${pessoa2.nome}");
}

class Pessoa {
  var nome = "Vini";

  // criei um atributo final, statico e construtor que recebe nosso construtor nomeado
  static final Pessoa instancia = new Pessoa.construtornomeado();

  Pessoa.construtornomeado();
}
