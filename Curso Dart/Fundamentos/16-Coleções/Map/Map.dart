import 'dart:collection';

///
///*Conceitos
/// - Basicamente o map de listas, só que usado em Map
///

map() {
  print("16.3.1 Map\n");

  List<Map<String, dynamic>> familiaAdams = [];

  familiaAdams = [
    {"nome": "Julia"},
    {"nome": "Robert"},
    {"nome": "Anderson"}
  ];

  // vamos usar o map para criar o sobrenome Adams em todos os membros da família
  var familiaAdamsUdated =
      familiaAdams.map((e) => e.update("nome", (value) => "$value Adams"));

  print(familiaAdamsUdated);
}

void main() {
  map();
}
