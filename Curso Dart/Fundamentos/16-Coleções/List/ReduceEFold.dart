/*
*Conteito:
  - Compara os elementos da coleção retornando 1 único elemento resultante.
  - Ao interagir com os elementos, o indice 0 se torna o anterior, idice 1 se torna o atual
*/

listReduce() {
  print("16.0.6) Reduce em list\n");

  List<int> numerosPares = List.generate(6, (i) => i * 2);

  var resultado = numerosPares.reduce((anterior, atual) {
    // podemos ver que a cada ciclo desse print ele vai pegar o resultado que deu e vai colocar ele como valor anterior para interagir com o novo atual
    print("Anterior: $anterior + Atual: $atual");
    return anterior + atual;
  });

  print("Resultado: $resultado");

  print("");

  // outro ex

  List<int> idades = [55, 12, 19, 45, 89];
  var maisNovo =
      idades.reduce((value, element) => (value > element) ? element : value);

  print("O mais novo: $maisNovo");

  print("");
}

listFold() {
  print("16.0.7) Reduce em list\n");

/*
*Conteito:
  - Compara os elementos da coleção retornando 1 único elemento resultante.
  - Funciona igual ao Reduce porém aqui você pode dizer de onde você quer que o anterior comece
*/

  List<int> idades = [63, 23, 54, 13, 12];
  var maisVelho = idades.fold(
      // o valor 89 aqui no fold será o primeiro elemento testado/"previousValue" logo ele será a maior idade do nosso array
      89,
      (int previousValue, int element) =>
          (previousValue < element) ? element : previousValue);

  print("Mais velho: $maisVelho");
}

void main() {
  listReduce();
  listFold();
}
