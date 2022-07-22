import 'dart:async';

///
/// *Conceito:
/// - Streams é uma forma de monitorar eventos. ao adicionar eventos na stream os ouvintes serão notificados!
///   >> As streams fornecem uma sequencia assincrona de dados. para processar uma stream use await() ou listen()
///   >> Existem dois tipos de streams: Subscription ou broadcast
///   >> Stream é uma sequencia com varios futures.
///
/// *Stream:
/// - Fluxo que a classe streamController() está gerenciando
///
/// * add
/// - Adiciona eventos para ficarem de olho
///
/// *listen()
/// - Inscreve um evento na stream para aguardar notificações de eventos
///   >> OnData: Notifica com eventos de dados, se for null nada acontece
///   >> onError: caso tenha erro é notificado
///   >> onDone: Evento chamado quando stream é finalizado
///   >> cancelOnError: Assinatura cancelada ao receber um erro
///

/// * Conceito

conceito() {
  print("18.4.0) Conceito de Stream\n");
  // primeiro passo: criar controlador
  var controlador = StreamController();

  // segundo passo: criar stream e esconder controlador via encapsulamento
  var stream = controlador.stream;

  // terceiro passo: inscrição de ouvintes na stream
  stream.listen((event) {
    print("Evento: $event");
  }, onDone: () {
    print("Stream finalizada");
  });

  // quarto passo: adicionar um evento a stream
  controlador.sink.add("Vinícius");
  controlador.sink.add(36);
  controlador.sink.add(true);
  controlador.close();

  // apesar do print vir depois ele foi impresso antes no output
  print("Monitorando...");
}

/// * Model

// class para contar algo
class Contador {
  // criou variavel de contagem (inicio) e termino
  var _contagem = 1, termino;
  // controlador exitente apenas dentro da classe com final. que recebe o StreamController()
  final _controlador = StreamController();

  // métodos get para esconder o controlador.
  get sink => _controlador.sink;
  // não expor o controlador, exponha interfaces
  get stream => _controlador.stream;

  // inicializador onde passamos comecará a contagem assim que for iniciado
  Contador({this.termino = 5}) {
    // uso da classe timer que não vimos ainda para temporizar em segundos entre uma ação e outra. (nesse caso foi passado um segundo por era uma contagem em segundos)
    Timer.periodic(Duration(seconds: 1), (timer) {
      // se for menor do que o termino ele vai sink.add(_contagem) dentro do objeto
      if (_contagem < termino) {
        sink.add(_contagem);
        // caso seja diferente ele vai dar close() no sink e cancelar o timer para a aplicação não ficar rodando infinito
      } else {
        sink.close();
        timer.cancel();
      }
      // caso o if acima seja true ele vai acrescentar na contagem e vai refazer o loop do timer
      _contagem++;
    });
  }
}

model() {
  print("18.4.1) Stream Model\n");

  // instanciou o objeto com a classe contador dando um limite de término de 6 segundos e inicializou com .stream (getter)
  var contador = Contador(termino: 6).stream;

  // criamos um inscrito apenas (subscription) que recebe o listen()
  final inscrito1 = contador.listen((onData) {
    // printamos a informação que mudou toda vez que é alterado pelo nosso contador dentro do timer
    print("Inscrito1: $onData");
  }, onDone: () {
    // quando finalizado o listen() colocamos o print de fim!
    print("Fim!");
  });
}

void main() {
  conceito();
  model();
}
