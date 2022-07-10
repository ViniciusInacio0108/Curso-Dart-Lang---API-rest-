import 'Mamifero.dart';

class Dog extends Mamifero {
  String nome;
  bool latindo;

  Dog(this.nome, this.latindo, sexo, idade, docil) : super(sexo, idade, docil);

  void latir() {
    print("Dog está latindo");
  }
}
