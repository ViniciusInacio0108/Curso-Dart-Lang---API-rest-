void main() {
  print("06.3) Funções com parâmetros nomeados");
  print("");

  /* 
  Bem interessante essa função com parâmentros nomeados.
  Aqui vamos ter a mesma regra do posicionado onde temos que começar do último parâmentro.
  Os nomeados basicamente não precisam estar em ordem quando forem chamados e suas atribuição a outras funções, variáveis ou etc são feitas na chamada. 
  */

  int getIdade() {
    // apenas uma função que retorna a idade para podermos usar de exemplo
    int idade = 20;
    return idade;
  }

  ExibirDados(String nome, {int idade = 18, double altura = 1.70}) {
    print("Nome: $nome Idade: $idade Altura: $altura");
  }

  ExibirDados(
      // aqui nossos parâmentros nomeados não estão em ordem e puderam ser declarados pelo nome.
      "Vinícius",
      altura: 1.80,
      idade: getIdade());
}
