///
/// * Síncronas:
/// - Operações síncronas: Bloqueia a operação até que seja concluída.
/// - Funções síncronas: Executa somente operações síncronas
///
/// * Assíncrona:
/// - Operações assíncronas: Permitem executar outras operações enquanto são processadas.
/// - Função assícronas: Executam tanto síncronas como assíncronas
///
/// * Await:
/// - Indica uma espera de conclusão.
///
/// * Async:
/// - Deve ser usado em toda função que tenha Await
///
///

// funcao sincrona (vai ser efetuada em tempo convencional e não precisa esperar ou sincronizar com nada)
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

// essa func tarefa executa uma func status(tempo) que é assincrona, logo ela precisa esperar que a outra seja efetuada para que não tenhamos um bug, já que enquanto ela foi executada a func status() que faz parte dela não foi. para isso usamo so async await
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return "Status: $msg";
}

// func status detem de um future que só será executo no tempo passado como parametro. logo ela sera executada no futuro. caso a func tarefa() não tivesse o await async para suprir esse delay ela seria executada antes dessa e obteria o retorno errado dessa func status().
Future<String> status(tempo) {
  return Future.delayed(
      Duration(seconds: tempo), () => "Primeiro tarefa finalizada!");
}

// dentro do main usamos o await e async pois como temos uma func que será executada no futuro quando a aplicação já finalizou execução precisamos pedir para que ele espere pela func para poder então finalizar
void main() async {
  print("18.1.0) Async Await\n");

  contagem(segundos: 3);
  print(await tarefa(tempo: 3));
}
