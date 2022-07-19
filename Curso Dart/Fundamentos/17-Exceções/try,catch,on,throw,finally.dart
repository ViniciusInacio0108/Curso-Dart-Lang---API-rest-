///
///*Tratamento de exceção!
/// - Try: tenta uma linha de código e caso de erro faz outra coisa
/// - catch: pega o erro acontecido no try
/// - on: captura erros conhecidos no try
/// - throw: exceção criada pelo usuário e tratado no catch
/// - finally: executado ao final do catch/try com ou sem erro. Utilizado para liberar recursos da lógica

// Caso 1: quando voce desconhece a exceção use o try e catch
caso1() {
  print("17.0.1) Try Catch\n");

  try {
    // como isso está errado e causa um erro
    int resultado = 1 ~/ 0;
    print(resultado);
  } catch (e) {
    // esse erro é repassado para o catch via parametro e printado pela gente com o código abaixo
    print("Exceção $e");
  }
}

// Caso 2: Quando voce conhece use o ON
caso2() {
  print("17.0.2) ON\n");

  try {
    // como isso está errado e causa um erro
    int resultado = 1 ~/ 0;
    print(resultado);
  } on IntegerDivisionByZeroException {
    // basicamente usamos o on com o codigo do erro e fazemos o tratamento aqui
    print("Erro conhecido, não divida por 0 retornando inteiro");
  }
}

// Caso 3: stack trace serve para podermos saber onde está o erro no código
caso3() {
  print("17.0.3) Stacktrace\n");

  try {
    // como isso está errado e causa um erro
    int resultado = 1 ~/ 0;
    print(resultado);
  } catch (e, s) {
    // usamos o catch porem com o paramentro a mais. o segundo parametro é o stack trace onde podemos vizualizar qual linha vem o erro
    print("Execeção: $e");
    // aqui o stack trace
    print("Stack trace: $s");
  }
}

// Caso 4: o finally será executado de qualquer maneira
caso4() {
  print("17.0.4) Finally\n");

  try {
    // como isso está errado e causa um erro
    int resultado = 1 ~/ 0;
    print(resultado);
  } catch (e) {
    print("Execeção: $e");
  } finally {
    print("Executado com erro ou não");
  }
}

void main() {
  print("17.0.0) Tratamento de execeções\n");

  caso1();
  caso2();
  caso3();
  caso4();
}
