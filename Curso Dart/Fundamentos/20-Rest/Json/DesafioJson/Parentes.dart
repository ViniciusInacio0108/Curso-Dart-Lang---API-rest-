class Parentes {
  late String mae, pai;

  Parentes(this.mae, this.pai);

  Parentes.fromJson(json) {
    this.mae = json["mae"];
    this.pai = json["pai"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Mãe: ${this.mae} Pai: ${this.pai}";
  }
}
