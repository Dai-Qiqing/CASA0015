class Outfit {
  final dynamic id;
  final dynamic name;
  final dynamic description;
  final dynamic views;
  final dynamic picture;
  final dynamic category;
  final DateTime? createdAt;
  final DateTime? updateAt;

  Outfit({
    this.id,
    this.name,
    this.description,
    this.views,
    this.picture,
    this.category,
    this.createdAt,
    this.updateAt,
  });

  factory Outfit.fromJson(Map<String, dynamic> json) {
    return Outfit(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      views: json['views'],
      picture: json['picture'],
      category: json['category'],
      createdAt: DateTime.parse(json['created_at']),
      updateAt: DateTime.parse(json['update_at']),
    );
  }
}
