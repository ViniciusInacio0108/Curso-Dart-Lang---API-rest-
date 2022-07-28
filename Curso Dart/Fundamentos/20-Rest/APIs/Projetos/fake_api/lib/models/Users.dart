class ListaDeUsuarios {
  List<Usuario>? listaUsuarios;

  ListaDeUsuarios(this.listaUsuarios);

  factory ListaDeUsuarios.fromJson(List<dynamic> jsonList) {
    return ListaDeUsuarios(jsonList.map((e) => Usuario.fromJson(e)).toList());
  }

  List<dynamic>? toJson() {
    return listaUsuarios;
  }
}

class Usuario {
  int? id;
  String? name, username, email, phone, website;
  Endereco? endereco;
  Companhia? companhia;

  Usuario(this.id, this.name, this.username, this.email, this.phone,
      this.website, this.endereco);

  Usuario.fromJson(json) {
    this.id = json["id"];
    this.name = json["name"];
    this.username = json["username"];
    this.email = json["email"];
    this.phone = json["phone"];
    this.website = json["website"];
    this.endereco = Endereco.fromJson(json["address"]);
    this.companhia = Companhia.fromJson(json["company"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "username": this.username,
      "email": this.email,
      "phone": this.phone,
      "website": this.website,
      "endereco": this.endereco,
      "companhia": this.companhia
    };
  }
}

class Endereco {
  String? street, city, suite, zipcode;
  Geo? geo;

  Endereco(this.street, this.suite, this.city, this.zipcode, this.geo);

  Endereco.fromJson(json) {
    this.street = json["street"];
    this.suite = json["suite"];
    this.city = json["city"];
    this.zipcode = json["zipcode"];
    this.geo = Geo.fromJson(json["geo"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "street": this.street,
      "suite": this.suite,
      "city": this.city,
      "zipcode": this.zipcode,
      "geo": this.geo
    };
  }
}

class Geo {
  String? lat, lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(json) {
    this.lat = json["lat"];
    this.lng = json["lng"];
  }

  Map<String, dynamic> toJson() {
    return {"lat": this.lat, "lng": this.lng};
  }
}

class Companhia {
  String? name, catchPhrase, bs;

  Companhia(this.name, this.catchPhrase, this.bs);

  Companhia.fromJson(json) {
    this.name = json["name"];
    this.catchPhrase = json["catchPhrase"];
    this.bs = json["bs"];
  }

  Map<String, dynamic> toJson() {
    return {"name": this.name, "catchPhrase": this.catchPhrase, "bs": this.bs};
  }
}
