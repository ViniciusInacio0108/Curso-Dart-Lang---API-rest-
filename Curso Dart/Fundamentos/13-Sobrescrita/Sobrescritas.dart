/* 

*Metodos: (Override != de OverLoad) // aqui vamos trabalhar com Override.
  - Override: Temos sobrescritas dos metodos da classe pai através da classe filho

*Construtores
  - Super se refere ao construtor da classe herdeira

* Classes Abstratas
  - Não podem ser instanciadas, servem apenas como modelos para outras.
  - Métodos sem escopo devem ser sobrescritos dentro das classes herdeiras.

*/

// usando o abstract aqui na criação da classe eu basicamente estou criando uma classe modelo que não poderá ser instanciada
import 'Dog.dart';

void main() {
  print("13.0) Sobrescrita de métodos, atributo e construtores\n");

  var dog = Dog("Leia", true, 3, true, true, true);

  dog.Alimentar();
  dog.Dormir();
  dog.Nasce();
}
