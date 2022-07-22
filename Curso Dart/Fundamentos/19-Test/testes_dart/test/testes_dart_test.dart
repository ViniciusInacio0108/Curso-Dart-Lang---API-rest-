import 'package:testes_dart/testes_dart.dart';
import 'package:test/test.dart';

// NESSE ARQUIVO QUE TESTAMOS A LóGICA DA NOSSA FUNC OU ETC

// USAMOS O "pub run test" NO TERMINAL PARA PODER VER O RESULTADO DO TESTE

// aqui vamos ver o uso do expect e test

/// A sintax de test é basicamente essa: test("descrição do teste", func anonima);
/// A sintax de expect é basicamente essa: expect(func/variavel a ser testada, resultado esperado por essa variavel/func);

void main() {
  // TESTE FUNÇÃO ADIÇÃO
  test("Adição", () {
    expect(adicao(10, 10), 20);
  });

  // TESTE VARIAVEL
  test("testVariavel", () {
    var numero = 10;
    expect(numero, 10);
  });

  // TESTE PADRÃO
  test('calculate', () {
    expect(calculate(), 42);
  });
}
