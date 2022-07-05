void main() {
  print("06.2) Parâmetros posicionas de funções");
  print("");

  /* 
  Parâmetros posicionados servem para podemos não obrigatoriamente declarar alguns parâmetros.
  Para isso basta usar chaves a partir do último parâmetro até qual parâmetro você deseja.
  Também podemos fazer o uso de params default assim, caso não declaremos algum parâmetro, ele tenha um valor default.  
  */

  ExibirDados(String nome, [int idade = 21, var altura]) {
    print("Nome: $nome Idade: $idade Altura: $altura");
  }

  ExibirDados(
      "Vinícius"); // aqui podemos notar que sou obrigado apenas a colocar o nome. Nota-se no print que o valor default da idade foi aplicado e que a altura ficou null por não ser declarada nenhum default.
}
