void main () {
  print("02.0) Operadores Lógicos && ! ||");

  /* Basicamente temos 3 operadores lógicos: && (and), ! (oposto) e || (ou) */

  var verdadeiro = !false;
  bool falso = !true;

  print("O ${verdadeiro} é o falso ao contrário e o ${falso} é o verdadeiro ao contrário");

  var teste1 = verdadeiro && verdadeiro;
  var teste2 = verdadeiro && falso;
  var teste3 = falso && falso;

  print("O verdadeiro e verdadeiro da: ${teste1}");
  print("O verdadeiro e falso da: ${teste2}");
  print("O falso e falso da: ${teste3}");

  print("");

  var teste4 = verdadeiro || verdadeiro;
  var teste5 = verdadeiro || falso;
  var teste6 = falso || falso;

  print("O verdadeiro ou verdadeiro da: ${teste4}");
  print("O verdadeiro ou falso da: ${teste5}");
  print("O falso ou falso da: ${teste6}");

}