class StudentsModel {
  String id;
  String userId;
  final String userName;
  final String firstName;
  final String lastName;
  final String imageLink;
  final String academicChoice;

  StudentsModel({
    this.id = '',
    this.userId = '',
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.imageLink,
    required this.academicChoice,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_ID': userId,
        'user_name': userName,
        'first_name': firstName,
        'last_name': lastName,
        'image_link': imageLink,
        'academic_choice': academicChoice,
      };

  static StudentsModel fromJson(Map<String, dynamic> json) => StudentsModel(
        id: json['id'] ?? '',
        userId: json['user_ID'] ?? '',
        userName: json['user_name'] ?? '',
        firstName: json['first_name'] ?? '',
        lastName: json['last_name'] ?? '',
        imageLink: json['image_link'] ?? '',
        academicChoice: json['academic_choice'] ?? '',
      );
}
