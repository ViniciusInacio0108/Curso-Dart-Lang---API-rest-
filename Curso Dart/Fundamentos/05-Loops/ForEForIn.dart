void main() {
  print("05.2) For e For In");
  print("");

  /* 
  Também algo que já tenho bastante conhecimento.
  Aqui temos a diferença que o for você controla mais o indice em relação ao While
  e o For In tem um controle automatizado e crescente, usado para percorrer listas e dados. 
  */

  for (var i = 0; i <= 3; i++) {
    print("Contador: $i");
  }

  var array = [1, 2, 3, 4, 5];
  for (var elemento in array) {
    elemento = elemento * 2;
    print("O elemento multiplicado virou: $elemento");
  }
}
