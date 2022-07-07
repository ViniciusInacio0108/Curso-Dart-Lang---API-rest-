void main() {
  print("10.0) Modificadores Static");
  print("");

  /* 
  Em modificadores static temos que as variáveis ficam disponíveis apenas no escopo da classe e não podem ser usada pelos objetos 
  Podemos usar essas variáveis static e não precisamos instanciar nenhum objeto para podermos usar.

  Muito usado para recurso reutilizaveis varias vezes. Assim podemos usar a classe diretamente ao invés de criar um objeto para usar um método ou atributo
  */

  Calculo calculo1 = Calculo();
  print(calculo1.pi); // aqui eu tive que criar um objeto e chamar a partir dele

  print(Calculo
      .piEstatico); // aqui apenas chamei sem criar objeto, usando apenas a classe
}

class Calculo {
  double pi = 3.14;
  static double piEstatico = 3.14;

  // criaremos dois métodos um static e outro normal

  // método normal
  double areaCirculo(double raio) => pi * (raio * raio);

  //método static
  static double areaCirculoEstatico(double raio) => piEstatico * (raio * raio);
}
