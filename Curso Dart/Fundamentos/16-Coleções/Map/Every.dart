import 'dart:collection';

///
///*Conceitos
/// - faz o mesmo teste em todos os elementos e se todos tiverem o true retorna true senão false
///

mapEvery() {
  print("16.3.2 Every\n");

  // ex: ver se lista de maps são todas com o número 1
  List<Map<int, int>> codigos = [];
  codigos = [
    {1: 1},
    {2: 1},
    {3: 1},
    {4: 1},
    {5: 1}
  ];

  // esse every vai percorrer cada elemento da lista, entrar na parte de valores dos maps e testar se tem o valor 1. Caso todos tenham o valor 1 ele retorna true pelo contrário retorna false.
  (codigos.every((element) => element.values.contains(1)))
      ? print("Contém 1")
      : print("Não contém 1");
}

void main() {
  mapEvery();
}
