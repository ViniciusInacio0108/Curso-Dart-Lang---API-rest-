void main() {
  print("03.3) Switch");
  print("");

  /* Switch assim como no JS funciona igual.
  Basta passar um parâmentro e checar caso a caso baseado nesse parâmetro passado. */

  String operacao = "-";
  int numeroA = 10;
  int numeroB = 30;

  switch (operacao) {
    case "+":
      print("O resultado é : ${numeroA + numeroB}");
      break;
    case "-":
      print("O resultado é : ${numeroA - numeroB}");
      break;
    case "/":
      print("O resultado é : ${numeroA / numeroB}");
      break;
    case "*":
      print("O resultado é : ${numeroA * numeroB}");
      break;
  }
}
