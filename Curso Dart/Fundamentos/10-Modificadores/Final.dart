void main() {
  print("10.1) Final modificador");
  print("");

  /* 
  Final você pode não declarar antes da execução e assim que ela for declarada em execução não poderá ser alterada.
  Diferente do const que necessariamente precisa ser declarado na compilação e não pode mais ser alterado.
  */

  // Exercício a ser resolvido: Obejeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima do objeto?

  // variável gravidade instanciada em tempo de execução e que não poderá ser alterada.
  final gravidade;
  gravidade = 9.8;
  double tempo = 5;
  double velocidade = tempo * gravidade; // v = g * t
  print("A velocidade máxima é de $velocidade m/s");
}
