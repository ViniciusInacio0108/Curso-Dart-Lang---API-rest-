void main() {
  print("11.1) Singletons com getter\n");

  /* Basicamente com getter a instancia fica privada (_intancia) e aí acessamos por meio do getter */

  // agora vamos usar nossa instancia utilizando o getter
  print(PessoaGetter.instancia.nome);
}

class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorPrivado();
  String nome = "Vini";

  PessoaGetter._construtorPrivado();

  // getter da _intancia
  static PessoaGetter get instancia {
    return PessoaGetter._instancia;
  }
}
