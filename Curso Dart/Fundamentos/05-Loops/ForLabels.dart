void main() {
  print("05.3) For labels");
  print("");

  /* Temos aqui os labels onde podemos controlar o continue e o break de qual loop especifícamente. */

  loop_de_i: // label
  for (var i = 0; i < 3; i++) {
    print("Contador de i: $i");
    loop_de_k: // label
    for (var k = 0; k < 3; k++) {
      print("Contador de k: $k");
      if (k == 2) {
        break loop_de_i;
      }
    }
  }
}
