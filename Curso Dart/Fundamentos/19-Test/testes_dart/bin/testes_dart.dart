import 'package:testes_dart/testes_dart.dart' as testes_dart;

// podemos usar o Assert para testar alguma condicional. Usando assert dentro do try, catch podemos tratar.

void main(List<String> arguments) {
  print('Calculated: ${testes_dart.calculate()}!');

  // assert exemplo:
  var numero = 10;

  ///Exception has occurred.
  ///_AssertionError ('file:///Users/viniciusinacio/Documents/GitHub/Curso-Dart-Lang---API-rest-/Curso%20Dart/Fundamentos/19-Test/testes_dart/bin/testes_dart.dart': Failed assertion: line 10 pos 10: 'numero > 10': is not true.)
  // resultou nessa execeção acima pois é errado
  assert(numero > 9);

  // assert com try/catch
  var numero2 = 10;
  try {
    assert(numero2 > 9);
  } catch (e) {
    print("Exceção: $e");
  }

  print("Adição: ${testes_dart.adicao(10, 10)}");
}
