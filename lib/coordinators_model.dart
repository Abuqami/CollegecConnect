class CoordinatorsModel {
  String id;
  final String fullName;

  CoordinatorsModel({
    this.id = '',
    required this.fullName,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
      };

  static CoordinatorsModel fromJson(Map<String, dynamic> json) =>
      CoordinatorsModel(
        id: json['id'] ?? '',
        fullName: json['full_name'] ?? '',
      );
}
