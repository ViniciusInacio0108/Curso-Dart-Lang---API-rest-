/*
*Conteito:
  - Cria uma nova lista contendo elementos ou concatenando de outras listas.
*/

listExpand() {
  print("16.0.2) Expand em list\n");

  var lista = [
    [1, 2],
    [3, 4],
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();

  List<dynamic> listaDuplicada =
      listaFlat.expand((element) => [element, element]).toList();

  print("ListaFlat: $listaFlat ListaDuplicada: $listaDuplicada \n");

  // Podemos usar o If dentro de nossas listas
  List<dynamic> diversos_items = [
    ...listaFlat,
    if (listaFlat is List<dynamic>) lista
  ];
  print("Lista com if dentro: $diversos_items");
}

void main() {
  listExpand();
}
