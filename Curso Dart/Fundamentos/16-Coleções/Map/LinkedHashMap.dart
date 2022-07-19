import 'dart:collection';

///
///*Conceitos
/// - Coleção entre chaver {}. Cada elemento tem uma chave única e um valor que não se repete.
///

linkedHashMap() {
  print("16.3.0 LinkedHashMap\n");

  // vamos criar uma lista com nomes
  List<String> nomes = ["Vinícius", "Kelly"];
  // agora vamos criar um Map
  Map<int, String> nomesMap =
      nomes.asMap(); // func asMap() serve para transformar a lista em lista Map

  // vamos printar
  print(nomesMap);
  print(nomesMap.keys);

  // se fizermos update de uma chave ela vai alterar a ja existente ou criar caso não exista
  Map<String, dynamic> frutas = Map();
  frutas["Banana"] = "Amarela";
  frutas["Banana"] = "Verde";
  // note que alterou o valor pois tem a mesma chave
  print(frutas);

  // agora vamos criar um exemplo de usuário dentro do dart utilizando Map
  Map<String, dynamic> usuario = Map();
  // addAll para adicionar chaves : valores
  usuario.addAll({"nome": "Vinícius", "idade": 21, "peso": 70});
  // fiz update do valor baseado na key
  usuario.update("nome", (value) => "$value Inácio");
  // coloca se ausente a chave
  usuario.putIfAbsent("altura", () => 1.70.toStringAsFixed(2));

  print(usuario);
}

void main() {
  linkedHashMap();
}
