/*
- Biblioteca HTTP: https://pub.dev/packages/http
- Via CEP: https://viacep.com.br/
*/

import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  // URL DA API
  String url = "https://viacep.com.br/ws/59296641/json/";

  try {
    // REQUISIÇÃO
    var response = await http.get(Uri.parse(url));

    print("Status: ${response.statusCode}");
    print("Status: ${response.body}");

    if (response.statusCode == 200) {
      // DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      Cep cep = Cep.fromJson(parsedJson);

      // ENCODE
      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
    } else {
      // CASO ERRO
      throw Exception(
          "Erro ao obter o CEP. Status code: ${response.statusCode}");
    }
  } catch (e) {
    // PRINT ERRO
    print(e);
  }
}

// CLASS CEP
class Cep {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  Cep(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  Cep.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.logradouro;
    data['complemento'] = this.complemento;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    data['uf'] = this.uf;
    data['ibge'] = this.ibge;
    data['gia'] = this.gia;
    data['ddd'] = this.ddd;
    data['siafi'] = this.siafi;
    return data;
  }
}
