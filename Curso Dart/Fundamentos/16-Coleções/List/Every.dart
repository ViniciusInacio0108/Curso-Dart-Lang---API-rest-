/*
*Conteito:
  - Passa por todos os elementos da lista baseado em uma condição ele vai retornar true ou false.
  - Todos os elementos tem que estar de acordo para que o true seja validado.
*/

listEvery() {
  print("16.0.4) Every em list\n");

  var inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((element) => element > 0);
  print(resultado);

  // o resultado foi false por que o elemento 0 não é maior que zero. Como todos elementos não tem a mesma afirmação. O retorno é false.
}

void main() {
  listEvery();
}
