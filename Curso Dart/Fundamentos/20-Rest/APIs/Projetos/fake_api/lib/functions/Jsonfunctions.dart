import 'package:fake_api/models/Users.dart';
import 'package:fake_api/models/Posts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Pegar um Json diretamente de uma requisição http
jsonGet() async {
  String url = "https://jsonplaceholder.typicode.com/users";

  // try response
  try {
    // DECODE
    var response = await http.get(Uri.parse(url));

    // se a resposta tiver ok
    if (response.statusCode == 200) {
      print("Getado");
      List<dynamic> parsedJson = jsonDecode(response.body);

      ListaDeUsuarios listaDeUsuarios = ListaDeUsuarios.fromJson(parsedJson);

      print("${listaDeUsuarios.listaUsuarios?[1].endereco?.street}");

      // ENCODE
      var map = listaDeUsuarios.toJson();
      String toJson = jsonEncode(map);
      print(toJson);

      // caso não esteja ok
    } else {
      // throw exeception caso deu algo errado
      throw Exception("Algo deu errado! Status code: ${response.statusCode}");
    }
    // catch padrão
  } catch (e, s) {
    print("erro: $e linha:$s");
  }
}

// Criar um objeto diretamente dentro de um http
jsonPost() async {
  String url = "https://jsonplaceholder.typicode.com/posts";

  // DECODE

  // fakiando um json transformado já
  Map<String, dynamic> parsedJson = {
    "title": "Vinícius",
    "body": "Sou lindo",
    "userId": 1,
  };

  var objeto = Post.fromJson(parsedJson);

  print("${objeto.body}");

  // ENCODE
  var toJson = jsonEncode(objeto);

  try {
    var response = await http.post(Uri.parse(url), body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 201) {
      print("Objeto Postado!");
      print(response.body);
    } else {
      throw Exception("Objeto deu erro! Status code: ${response.statusCode}");
    }
  } catch (e) {
    print(e);
  }
}

// Modificar objeto já existente. No caso iremos modificar o objeto com userId 1 que criamos acima.
jsonPut() async {
  String url = "https://jsonplaceholder.typicode.com/posts/1";

  // DECODE

  // fakiando um json parseado e modificado para dar put
  Map<String, dynamic> parsedJson = {
    "id": 1,
    "title": "Kelly",
    "body": "Minha namo",
    "userId": 100,
  };

  var objeto = Post.fromJson(parsedJson);

  print("${objeto.body}");

  // ENCODE
  var toJson = jsonEncode(objeto);

  try {
    var response = await http.put(Uri.parse(url), body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      print("Objeto Putado!");
      print(response.body);
    } else {
      throw Exception("Objeto deu erro! Status code: ${response.statusCode}");
    }
  } catch (e) {
    print(e);
  }
}

// Patch serve para alterar apenas um item do body ao invés de todo o conteúdo
jsonPatch() async {
  String url = "https://jsonplaceholder.typicode.com/posts/1";

  // DECODE

  // fakiando um json parseado com apenas o que desejo alterar como se pede no documento do fakeapi
  Map<String, dynamic> parsedJson = {
    "title": "Zecá",
  };

  var objeto = Post.fromJson(parsedJson);

  print("${objeto.body}");

  // ENCODE
  var toJson = jsonEncode(objeto);

  try {
    var response = await http.patch(Uri.parse(url), body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      print("Objeto Pacthado!");
      print(response.body);
    } else {
      throw Exception("Objeto deu erro! Status code: ${response.statusCode}");
    }
  } catch (e) {
    print(e);
  }
}

jsonDelete() async {
  String url = "https://jsonplaceholder.typicode.com/posts/1";

  // DECODE

  // fakiando um json parseado com apenas o que desejo alterar como se pede no documento do fakeapi
  Map<String, dynamic> parsedJson = {
    "id": 1,
    "title": "Kelly",
    "body": "Minha namo",
    "userId": 100,
  };

  var objeto = Post.fromJson(parsedJson);

  print("${objeto.body}");

  // ENCODE
  var toJson = jsonEncode(objeto);

  try {
    var response = await http.delete(Uri.parse(url), body: toJson, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      print("Objeto Deletado!");
      print(response.body);
    } else {
      throw Exception("Objeto deu erro! Status code: ${response.statusCode}");
    }
  } catch (e) {
    print(e);
  }
}
