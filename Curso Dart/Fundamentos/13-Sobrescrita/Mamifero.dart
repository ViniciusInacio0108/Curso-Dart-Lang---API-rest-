import 'Animal.dart';

abstract class Mamifero extends Animal {
  bool pelos;
  bool patas;

  Mamifero(this.pelos, this.patas, int idade, bool docil)
      : super.vertebrado(idade, docil) {}

  void Alimentar() {
    print("O mamifero se alimenta");
  }

  // aqui temos uma classe sem escopo que deve ser sobrescrita na classe herdeira (nesse caso Dog). É obrigatório senão temos erro no código
  void Nasce();
}
