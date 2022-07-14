/*
*Conteito:
  - Transforma ou seleciona os elementos de uma coleção criando uma nova do mesmo tamanho
*/

listMap() {
  print("16.0.3) Map em list\n");

  // apenas pegar os elementos da lista e colocar em uma nova lista com mudanças
  List<String> frutas = ["Morango", "Maçã", "Banana"];
  List<String> frutasMapeadas = frutas.map((e) => "$e é uma fruta").toList();

  print("Frutas mapeadas: $frutasMapeadas");

  // fazer uma conversao de uma lista por meio do map
  var moedaEmRS = [2.50, 3, 1, 10];
  var valorDoDolar = (e) => e * 5.55;

  var moedaEmDOL = moedaEmRS.map(valorDoDolar).toList();

  print("Valores convertidos em dolar: $moedaEmDOL");
}

void main() {
  listMap();
}
