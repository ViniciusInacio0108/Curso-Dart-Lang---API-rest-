// Vamos aprender a dar Encode, Decode, Serialização manual e transformar em objeto

import 'dart:convert';

conversaoDireta() {
  print("20.0.0) Conversão direta Json\n");

  // DECODE
  // decodar é quando você recebe o Json pode ser de uma requisição HTTP e vai decodificar ele para o uso
  var JsonData = '''
  {
    "nome" : "Vinícius",
    "idade" : 21,
    "sexo" : "Masculino"
  }
  ''';

  // recebeu o json traduzido para map
  Map<String, dynamic> parsedJson = jsonDecode(JsonData);
  var nome = parsedJson["nome"];
  var idade = parsedJson["idade"];
  var sexo = parsedJson["sexo"];

  print("Map: $parsedJson");
  print("Nome: $nome, Idade: $idade, Sexo: $sexo");

  //ENCODE
  // transformar algum dado para json (deve ser válido, como um Map por exemplo)

  Map<String, dynamic> data = {
    "nome": "Kelly",
    "idade": 17,
    "sexo": "Feminino"
  };

  var toJson = jsonEncode(data);
  print("JsonEncoded: $toJson");
}

conversaoObjeto() {
  print("20.0.1) Conversão objeto\n");

  var JsonData = '''
  [{
    "nome" : "Vinícius",
    "idade" : 21,
    "sexo" : "Masculino"
  }, 
  {
    "nome" : "Kelly",
    "idade" : 17,
    "sexo" : "Feminino"
  } ]
  ''';

  var pardeJson = jsonDecode(JsonData);
  var listaUsuarios = ListaDeUsuarios.fromJson(pardeJson);
  print("Usuario 2 nome: ${listaUsuarios.usuarios[1].nome}");
  print("Lista de usuarios: ${listaUsuarios.usuarios}");
}

class Usuario {
  String nome, sexo;
  int idade;

  Usuario(this.nome, this.idade, this.sexo);

  factory Usuario.fromJson(usuario) {
    return Usuario(usuario["nome"], usuario["idade"], usuario["sexo"]);
  }
}

class ListaDeUsuarios {
  List<Usuario> usuarios;

  ListaDeUsuarios(this.usuarios);

  factory ListaDeUsuarios.fromJson(List<dynamic> json) {
    return ListaDeUsuarios(json.map((e) => Usuario.fromJson(e)).toList());
  }

  @override
  String toString() {
    return "Lista Usuários: $usuarios";
  }
}

void main() {
  conversaoDireta();
  conversaoObjeto();
}
