import 'Usuario.dart';

void main() {
  print("08.0) Construtores");
  print("");

  Usuario usuarioNormal =
      Usuario("Vinícius", "123456", cargo: "Programador", idade: 20);

  // uso da classe com construtor nomeado
  Usuario usuarioADM = Usuario.admin("Kelly", "1234567");

  usuarioADM.info();
  usuarioNormal.info();
}
