class CoordinatorsFromAdminModel {
  String id;
  final String emailAddress;
  final String timestamp;

  CoordinatorsFromAdminModel({
    this.id = '',
    required this.emailAddress,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'email_address': emailAddress,
        'date': timestamp,
      };

  static CoordinatorsFromAdminModel fromJson(Map<String, dynamic> json) =>
      CoordinatorsFromAdminModel(
        id: json['id'] ?? '',
        emailAddress: json['email_address'],
        timestamp: json['date'] ?? '',
      );
}
