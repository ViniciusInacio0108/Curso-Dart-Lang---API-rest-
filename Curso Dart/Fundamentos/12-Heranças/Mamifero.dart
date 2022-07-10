import 'Animal.dart';

class Mamifero extends Animal {
  String sexo;

  Mamifero(this.sexo, idade, docil) : super(idade, docil);

  void mamar() {
    print("Mamando pois sou mamífero");
  }
}
