import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidenciavel.dart';

// implements é o sintax usado para interfaces
class Candidato extends Cidadao implements Postagem, Precidenciavel {
  // INTERFACES
  @override
  var ideologia;

  @override
  var partido;

  @override
  var postagem;

  Candidato(String nome) : super(nome) {
    direitoDeveres();
  }

  @override
  void escreverPostagem() {
    print("$nome postou: $postagem");
  }

  @override
  void ideologiaPolitica() {
    print("$nome é do lado de $ideologia do partido $partido");
  }

  @override
  void objetivosPessoais() {
    print("Tem como objetivo: O sucesso!");
  }
}
