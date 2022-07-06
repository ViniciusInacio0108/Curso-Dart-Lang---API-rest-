import 'Usuario.dart';

void main() {
  print("09.0) Encapsuladores");
  print("");

  /* Já tinha conhecimento sobre encapsuladores no JS. É um pouco diferente mas bem simples também. */

  var usuario1 = Usuario("Vinícius", "ABC123");

  usuario1.senha =
      "123456"; // quando usa o igual para atribuição você já esta acessando o método set automáticamente
  print(usuario1
      .senha); // aqui estou usando também o mesmo método, porém não estou atribuindo, logo ele entende que é o get.
}
