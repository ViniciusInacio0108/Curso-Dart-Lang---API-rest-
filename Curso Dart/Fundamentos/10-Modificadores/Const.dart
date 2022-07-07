void main() {
  print("10.2) Const modificador");
  print("");

  /* 
  O conste tem que ser declarado antes da execução e não poderá ser mais alterado.
  */

  // Exercício a ser resolvido: Obejeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima do objeto?

  // variável gravidade instanciada em tempo de compilação e não poderá ser alterada mais, tanto que se você apagar a atribuição de valor ele da erro, pois precisa ser declarado.
  const double gravidade = 9.8;
  double tempo = 5;
  double velocidade = tempo * gravidade; // v = g * t
  print("A velocidade máxima é de $velocidade m/s");
}
