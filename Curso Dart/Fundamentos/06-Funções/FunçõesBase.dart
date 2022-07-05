void main() {
  print("06.0) Funcções o básico");
  print("");

  /* 
  Bem parecido com JS novamente. Únicas diferenças são que temos aqui uma declaração diferente.
  No JS temos que a sintax é 'function NomeDaFuncao () {}' porém aqui temos no lugar do function a declaração como variáveis convencionais.
  void para sem retornos, String para retorno de Strings, Int para retorno de Ints e ETC.
  Podemos deixar dinâmico também apenas não declarando nada e o próprio Dart faz essa declaração.
  */

  void HelloWorld() {
    print("Hello World");
  }

  HelloWorldSemVoid() {
    print("Hello World sem void");
  }

  String HelloWorldComRetorno() {
    var HelloWorld = "Hello World como retorno";
    return HelloWorld;
  }

  HelloWorld();
  HelloWorldSemVoid();

  var variavelQueRecebeHelloWorld = HelloWorldComRetorno();
  print(variavelQueRecebeHelloWorld);
}
