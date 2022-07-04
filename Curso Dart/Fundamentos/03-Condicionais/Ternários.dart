
void main() {
  print("03.2) Ternários");
  print("");

  /* Basicamente o mesmo modelo dos ternários dentro de JavaScript.
  Temos um If Else mais compacto e fácil
  */

  double nota = 70;

  var resultado = nota < 70 ? "Reprovado" : nota == 70 ? "Tá na média" : "Passou liso"; 
  print(resultado);

  var letra_escolhida = "b";
  print("Entre A e B você escolheu: ${letra_escolhida == 'a' ? 'A' : 'B'}");
}