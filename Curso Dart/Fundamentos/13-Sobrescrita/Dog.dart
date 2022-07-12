import 'Mamifero.dart';

class Dog extends Mamifero {
  String nome;
  bool treinado;

  Dog(this.nome, this.treinado, int idade, bool docil, bool pelos, bool patas)
      : super(pelos, docil, idade, patas) {}

  // basta usar p @override para sobrescrever um método
  @override
  void Alimentar() {
    // aqui estou utilizando o método alimentar do pai e unindo ele ao print "fim". Assim estou sobrescrevendo a classe pai Alimentar ao mesmo tempo que uso a original.
    super.Alimentar();
    print("Fim!");
  }

  // não necessariamente precisa usar o @override, pois o Dart entende já que tem o mesmo nome.
  @override
  void Dormir() {
    // aqui eu não utilizei nada da classe super (pai) e só sobrescrevi com algo novo
    print("Dorme como um cão");
  }

  void Nasce() {
    print("O ${this.nome} nasceu");
  }
}
