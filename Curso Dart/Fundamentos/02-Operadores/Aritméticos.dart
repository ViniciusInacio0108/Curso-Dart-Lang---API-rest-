void main () {
  print("02.2) Operadores aritméticos");

  /* Detemos de diversos tipos de operadores: Os aritméticos (+ - / ~/ %),  incremento (+= ++), decremento (-= --) e assignação (??)*/
  
  var valorA = 10;
  var valorB = 5;
  var valorC = null;

  var soma = valorA + valorB; // somando um com outro
  var diminuicao = valorA - valorB; // diminuindo um com outro
  var divisao = valorA / valorB; // dividindo um com outro
  var divisao_resultado_inteiro = valorA ~/ valorB; // dividindo porem com o resultado inteiro
  var resto_da_divisao = valorA % valorB; // resto da divisao dos dois
  var incrementar_um = ++valorA; // acrecentou 1 ao valor que tinha dentro da variável
  var decrementar_um = --valorA; // diminuiu 1 do valo que tinha na variável
  var acrescentar_um = valorA += valorB; // pega o valorA e soma o valorA com o valorB
  var decrescentar_um = valorA -= valorB; // Pega o valorA e diminui o valorA com o valorB
  var assignacao = valorA = valorC ??valorB; // nesse caso a assignacao está para o valorB então caso o valorC seja nulo o valorB será atribuído em seu lugar
  valorC ??= valorA; // se valorC for nulo você preenche com o valorA
}