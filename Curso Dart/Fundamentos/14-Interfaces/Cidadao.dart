// classe pai
abstract class Cidadao {
  String nome;

  Cidadao(this.nome) {}

  void objetivosPessoais();

  void direitoDeveres() {
    print("Todo cidadão tem direitos e deveres.");
  }
}
