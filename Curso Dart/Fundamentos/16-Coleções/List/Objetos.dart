import 'dart:math';

class Pessoa {
  String nome, sobreNome;
  int _identidade = 0, idade;

  Pessoa(this.nome, this.sobreNome, this.idade, {identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(999999) : identidade;
  }

  get identidade => _identidade;
}

void main() {
  print("16.0.8) List manipulando objetos\n");

  Pessoa pessoa1 = Pessoa("Vinícius", "Inácio", 21);
  Pessoa pessoa2 = Pessoa("Kelly", "Borges", 17);

  List<Pessoa> pessoas = [pessoa1, pessoa2];

  // a partir daqui eu posso brincar com essa lista de class que criei

  // fazer apenas dois exemplos para deixar claro

  // 1: Pegar e mostrar em loop for as pessoas da lista
  for (var i = 0; i < pessoas.length; i++) {
    print("Nome da pessoa: ${pessoas[i].nome}");
  }

  //2: pegar quem é mais velho
  Pessoa maisVelho = pessoas.reduce(
      (value, element) => (value.idade < element.idade) ? element : value);
  print("Pessoa mais velha é: ${maisVelho.nome}");
}
