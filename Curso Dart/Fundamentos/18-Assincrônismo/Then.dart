///
/// *Conceito:
/// - Then registra acallbakc que serão chamadas quando o future for concluído.
///   >> onValue: valor passado ao termino do future
///   >> catchError: se emitido é lançado como exception
///     >> test: Se qualquer lógica retornar true é lançado a exception
///   >> whenComplete: chama func anonima ao fim do future
///

// funcao sincrona
void contagem({int segundos = 3}) {
  print("Carregando...\n");
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print("${i * 33}%");
      if (i == segundos) {
        print("Concluído");
      }
    });
  }
}

//funcoes assincronas

// tarefa() precisa ter um retorno Future<String> para podermos usar o .then dentro do main
// tarefa() está servindo como callback do status()
// o .then aqui serve para executar a funcao anonima após o status() ser executado com delayed.
Future<String> tarefa({int tempo = 1}) {
  // parametro msg dentro da func anonima significa o retorno da func status() que vem pelo uso do .then
  return status(tempo).then((msg) => "Status: $msg");
}

Future<String> status(tempo) {
  return Future.delayed(
      Duration(seconds: tempo), () => "Primeiro tarefa finalizada!");
}

void main() {
  print("18.3.0) Then\n");

  contagem(segundos: 3);
  // parametro value desse then é o return da func tarefa().
  // pegoe esse returne e printo.
  tarefa(tempo: 4).then((value) => print(value));
}
