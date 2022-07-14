/*
*Conteito:
  - Filtra os elementos baseado em uma condição e criando um novo array de mesmo tamanho ou menor.
  - Em outras linguagens é conhecido como Filter.
*/

listWhere() {
  print("16.0.5) Where em list\n");

  var idades = [18, 17, 20, 25, 13];
  print(idades.where((element) => element >= 18)); // retorno em Iterable

  List<int> adultos = idades.where((element) => element >= 18).toList();

  // também temos o singleWhere que retorna apenas 1
  var crianca = idades.singleWhere((element) => element == 12, orElse: () => 0);

  // retorno do print foi 0 pq não satisfazemos a condição do singleWhere. Logo o orElse foi colocado em prática
  print(crianca);

  // temos também o lastWhere e o firstWhere.
}

void main() {
  listWhere();
}
