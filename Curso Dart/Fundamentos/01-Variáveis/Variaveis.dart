void main() {
  print("01.0) Variáveis");

  /* Podemo declarar nossas variaveis de diversas maneiras. 
  Inicialmente podemos declarar elas usando o var (porém o var ele é dinamico na primeira atribuição e depois ele se torna fixo).
  Porém elas têm perda de desempenho comparada com a declaração fixa e real da variável.  */

  var valorA = 10; // Usando o var temos uma variavel dinâmica até eu declarar ela como int atribuindo um valor inteiro.
  var ValorB = 40;

  var resultado = valorA + ValorB;

  print("Valor A + Valor B = ${valorA + ValorB}"); // podemos usar a interpolação com ${}
  print("Resultado acima concatenando com dolarSign: $resultado");

  /* Para obter mais desempenho podemos declarar nossas variáveis diretamente */

  int variavel_inteira = 10;
  double variavel_flutuante = 2.5;
  String variavel_texto = "Olá";
  bool variavel_boolean = true;

  print("Inteiro = $variavel_inteira, Flutuante = $variavel_flutuante, String = $variavel_texto, Boolean = $variavel_boolean");

  /* Podemos também usar o const para uma variável fixa que será executada em tempo de compilação e não poderá ser alternada. 
  Essa variável tem que ser atribuida no momento de criação. */

  const pi = 3.14;

  print("Variável constante: $pi");

  /* Por fim temos a variável declarada como dynamic que poderá ser alternada entre tipos primitivos diferentes mesmo depois de já ter sido declarada com outro; */

  dynamic variavel_dinamica = "Oi";
  variavel_dinamica = 10;
  variavel_dinamica = true;

  print("O valor exibido sempre será o último salvo pela variável, logo será: $variavel_dinamica");
}
