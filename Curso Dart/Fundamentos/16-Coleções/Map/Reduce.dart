import 'dart:collection';

///
///*Conceitos
/// - retorna o total do valor anterior com o valor atual e assim segue
///

mapReduce() {
  print("16.3.4 Reduce\n");

  List idades = [];

  // list de maps idade
  idades = [
    {"idade": 19},
    {"idade": 17},
    {"idade": 21},
    {"idade": 30},
    {"idade": 13},
  ];

  // somar todas as idades com o reduce
  print(idades.reduce((value, element) {
    //Aqui tem que usar o mesmo nome da chave original
    return {"idade": value["idade"] + element["idade"]};
  }));
}

void main() {
  mapReduce();
}
