class Post {
  String? title, body;
  int? userId, id;

  Post(this.body, this.title, this.userId, this.id);

  Post.fromJson(json) {
    this.id = json["id"];
    this.title = json["title"];
    this.body = json["body"];
    this.userId = json["userId"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "title": this.title,
      "body": this.body,
      "userId": this.userId,
    };
  }
}
