abstract class Animal {
  bool docil;
  var coluna;
  int idade;

  Animal.vertebrado(this.idade, this.docil) {
    this.coluna = true;
  }
  Animal.invertebrado(this.idade, this.docil) {
    this.coluna = false;
  }

  Dormir() {
    print("Animal está dormindo...");
  }
}
