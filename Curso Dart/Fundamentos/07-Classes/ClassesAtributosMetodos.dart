// usando import
import 'Usuario.dart';

void main() {
  print("07.0) Classes, métodos e atributos");
  print("");

  // criando usuario
  Usuario usuario1 = Usuario();

  // usando o efeito cascata (..) para poder chamar os métodos (mas também pode ser usado para os atributos) mais facilmente.
  usuario1
    ..info()
    ..autenticarUsuario("Vinícius", "1234567");
}
