import 'dart:collection';

linkedHashSet() {
  print("16.1.0) LinkedHashSet\n");

  /*
  *Conceito de LinkedHashSet
    - É uma coleção de elementos únicos, ordenados entre chaves e que não tem indice. 
  */

  Set<int> setInt = Set();

  setInt.add(0); // adiciona o valor 0 ao set
  setInt.add(0);
  setInt.add(1);
  setInt.add(2);

  // podemos ver que nesse print s[o vamos ter 1 elemento pois em set não existe repetição
  print(setInt);

  //setInt.add(null); // não tem nulo pq é int

  setInt.remove(0); // removi o valor 0

  for (var i = 0; i < setInt.length; i++) {
    // o uso de [] igual arrays não funciona aqui pois não tem indicie. porém o elementAt() funciona
    print(setInt.elementAt(i));
  }

  // vamos ver algumas funções específicas das coleções set
  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {5, 6, 7, 8, 9};

  // difference() = Mostra a diferença entre a listaA para a lista de parametros
  print(listaA.difference(listaB));

  //union() = une as duas listas.
  // intersection() = o que existe nas duas listas
  // lookup() = retorna o elemento passado como parametro. caso não exista ele retorna null

  print("Isso é tudo sobre LinkedHashSet\n");
}

hashSet() {
  print("16.1.1) HashSet\n");

  /*
  *Conceito de HashSet
    - É uma coleção de elementos únicos, desordenados entre chaves e que não tem indice. 
  */

  HashSet<String> hashSet = HashSet();
  hashSet.add("Vinícius");
  hashSet.add("Kelly");
  hashSet.add("Rubem");
  // podemos ver no print que ele fica fora de ordem.
  // Apesar de ter adicionado em ordem
  print(hashSet);

  print("");
}

splayTreeSet() {
  print("16.1.2) SplayTreeSet\n");

  /*
  *Conceito de SplayTreeSet
    - Se organiza automaticamente em ordem crescente
    - Não pode ter elementos null por ser uma árvore de comparações
  */

  SplayTreeSet splayTreeSet = SplayTreeSet();
  splayTreeSet.add(100000);
  splayTreeSet.add(10000);
  splayTreeSet.add(1000);
  splayTreeSet.add(100);
  splayTreeSet.add(10);

  // apesar de ter adicionado em ordem decrescente ele organizará para mim
  print(splayTreeSet);
}

void main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}
