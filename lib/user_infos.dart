class UserInfos {
  String id;
  final String userName;
  final String firstName;
  final String lastName;
  final String academicMajor;

  UserInfos({
    this.id = '',
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.academicMajor,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'user name': userName,
        'first name': firstName,
        'last name': lastName,
        'academic major': academicMajor,
      };

  static UserInfos fromJson(Map<String, dynamic> json) => UserInfos(
        id: json['id'] ?? '',
        userName: json['user name'] ?? '',
        firstName: json['first name'] ?? '',
        lastName: json['last name'] ?? '',
        academicMajor: json['academic major'] ?? '',
      );
}
