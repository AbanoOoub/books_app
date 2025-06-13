class DropDownModel {
  final String name;
  final String description;

  DropDownModel({
    required this.name,
    required this.description,
  });

  factory DropDownModel.fromJson(Map<String, dynamic> json) {
    return DropDownModel(
      name: json["name"],
      description: json["description"],
    );
  }
}
