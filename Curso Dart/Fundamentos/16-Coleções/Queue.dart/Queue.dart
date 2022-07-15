import 'dart:collection';

queue() {
  print("16.2.0) Queue\n");

  /*
  *Conceito de Queue
    - Coleção ordenada entre chaves, sem index e que organiza o início e o fim da lista.
    - Igual uma fila assim como o nome diz.
  */

  Queue<int> queue = Queue();
  queue.addAll({20, 30});
  queue.add(40);
  // elementos respeitam a ordem que colocamos
  print(queue);

  queue.addFirst(10);
  queue.addLast(50);
  // adicionamos no inicio e no final da lista
  print(queue);

  queue.removeLast();
  // removemos o last
  print(queue);
}

void main() {
  queue();
}
