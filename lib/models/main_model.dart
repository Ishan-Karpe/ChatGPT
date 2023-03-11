class MainModel {
  final String id;
  final int created;
  final String root;

  MainModel({
    required this.id,
    required this.root,
    required this.created,
  });

  factory MainModel.fromJson(Map<String, dynamic> json) => MainModel(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );

  static List<MainModel> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => MainModel.fromJson(data)).toList();
  }
}
