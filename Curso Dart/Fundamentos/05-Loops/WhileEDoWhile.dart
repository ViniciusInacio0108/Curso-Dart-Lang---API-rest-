void main() {
  print("05.0) While e DoWhile");
  print("");

  /* 
  Outro assunto que já tenho bastante conhecimeto.
  Basicamente a mesma coisa, a única diferença é que o Do While o código será executado primeiro depois você tem a condição para poder reexecutar.
  */

  // Só lembrando que com brake podemos ter o corte da execução do loop em caso de necessidade.

  int parar_contador = 10;
  int contador = 1;
  while (contador <= parar_contador) {
    print(contador);
    contador++;
  }

  print("");

  int contador2 = 1;
  do {
    print(contador2);
    contador2++;
  } while (contador2 <= parar_contador);
}
