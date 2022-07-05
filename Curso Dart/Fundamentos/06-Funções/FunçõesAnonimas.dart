void main() {
  print("06.4) Funções anonimas");
  print("");

  /* Basicamente funções sem nomes, ótimas para callbacks. Também já sei bastante baseado no uso que tive em JS. */

  int idade = 20;

  executarFunctionAnonima(Function funcao) {
    // basicamente um funcao que recebe um parâmetro function e que vai executar ele dentro dela
    funcao();
  }

  executarFunctionAnonima(() => print(
      "Idade: $idade")); // função anonima sendo passada como parâmetro para outra.
}
