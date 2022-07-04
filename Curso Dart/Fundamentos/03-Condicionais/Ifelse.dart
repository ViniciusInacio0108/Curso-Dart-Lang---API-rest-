void main () {
  print("03.1) Operador condicional IF ELSE");
  print("");

  /* If e Else é super básico também, assim como toda outra linguagem de programção */

  int idade = 18;

  if (idade >= 18) {
    print("Maior de idade.");
  } else {
    print("Você não é maior de idade.");
  }

  double altura = 1.75;

  if (altura <= 1.60){
    print("Baixinho");
  } else if (altura > 1.60 && altura <= 1.90) {
    print("Normal");
  } else {
    print("Grande demais ou pequeno demais.");
  }

}