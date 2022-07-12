/*

* Interfaces:
  - Interfaces são modelos para implementar atributos e métodos em nossas classes.

* Regras:
  - Ao implementar uma interface temos que declarar tudo (atributos e métodos na classe filha)
  - No Dart não tem uma sintax específica então vale tanto abstrata quanto classe normal
  - Pode implementar mais de uma interface

*/
import 'Candidato.dart';

void main() {
  print("14.0) Interfaces\n");

  var lula = Candidato("Lula");
  lula
    ..ideologia = "Esquerda"
    ..partido = "PT"
    ..postagem = "Já perdi pro Ciro"
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..objetivosPessoais();
}
