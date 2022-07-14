/*
*Conteito:
  - List é nosso querido Array
  - forEach aplica uma função em cada elemento da coleção
*/

listForEach() {
  print("16.0.1) forEach em list\n");

  var array = [0, 2.5, 4, 6, 8, 10];
  array.forEach((elemento) {
    elemento *= 2;
    print("Elemento do array multiplicados por 2: $elemento");
  });

  print("");

  // agora vamos criar uma lista definida
  List<int> inteiros = [1, 2, 3, 4, 5];
  List<double> flutuantes = [2.5, 3.5, 4.5];

  inteiros.forEach((elemento) {
    print(elemento);
  });
}

void main() {
  listForEach();
}
