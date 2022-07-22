///
///* Future:
/// - É um objeto que retorna um valor ou um erro. resultado de uma execução assincrona.
///

// primeiro exemplo

// criou uma func contagem para contar o carregamento
void contagem({int segundos = 3}) {
  // printou carregando uma única vez antes do loop
  print("Carregando...\n");
  for (var i = 1; i <= segundos; i++) {
    // usou Future (class) com o método delayed passando parametro Duration(seconds: *o tempo*), e passando uma func anonima para fazer a contagem das porcentagens
    Future.delayed(Duration(seconds: i), () {
      // printando a porcentagem baseado nos segundos
      print("${i * 33}%");
      // mengem de finalização
      if (i == segundos) {
        print("Concluído");
      }
    });
  }
}

// segundo exemplo

// função será executada no futuro
void tarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo), () => print("Status: Finalizado!"));
}

void main() {
  print("18.0.0) Futures\n");

  // essa função funciona pois o print é executado dentro da Future. Caso ele só retorne a String aí não aparecerá nada. Caso o print esteja em uma funcao de callbakc então ele retornará o objeto.
  tarefa(tempo: 4);

  contagem(segundos: 3);
}
