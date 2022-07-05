void main() {
  print("06.1) Arrow Functions");
  print("");

  /* 
  Novamente a mesma coisa do JS. 
  Arrow functions com retorno implícito. 
  Simples e prático para usar principalmente como callback. 
  */

  var arrowFunction =
      () => print("Hello World"); // arrow functions sem parâmetros
  arrowFunction();

  String arrowFunction_com_parametro(valorA, valorB) =>
      "A soma dos valores tem o resultado de: ${valorA + valorB}";
  print(arrowFunction_com_parametro(10, 10));
}
