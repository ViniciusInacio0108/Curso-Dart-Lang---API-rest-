void main() {
  print("06.5) Closures");
  print("");

  /* Closures nada mais é do que uma função dentro do corpo de outra função. */

  PorcentagemDeDesconto(porcentagemASerDescontada) {
    return (valorASerDescontado) =>
        valorASerDescontado * porcentagemASerDescontada;
  }

  // descontarDez vai receber o retorno de PorcentagemDeDesconto que é a função closure. Logo ela vai ser a função closure só que com o parâmetro de porcentagemASerDescontada já aplicado.
  var descontarDez = PorcentagemDeDesconto(0.9);

  print(descontarDez(100));
}
