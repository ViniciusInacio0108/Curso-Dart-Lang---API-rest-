import 'dart:collection';

///
///*Conceitos
/// - cria nova lista filtrando o que você colocar como parâmetro
///

mapWhere() {
  print("16.3.3 Where\n");

  List<Map<String, int>> idades = [];

  // list de maps idade
  idades = [
    {"idade": 19},
    {"idade": 17},
    {"idade": 21},
    {"idade": 30},
    {"idade": 13},
  ];

  // variavel que vou usar para substituir e testar se é  maior de idade dentro do where
  var deMaior = (e) => (e["idade"] >= 18) ? true : false;

  print(idades.where(deMaior));
}

void main() {
  mapWhere();
}
