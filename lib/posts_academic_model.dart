class PostsAcademicModel {
  String id;
  final String userID;
  String fullName;
  final String titlePost;
  final String postAcademic;
  final String timestamp;

  PostsAcademicModel({
    this.id = '',
    required this.userID,
    this.fullName = 'Coordinator',
    required this.titlePost,
    required this.postAcademic,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userID': userID,
        'full_name': fullName,
        'title_post': titlePost,
        'post_academic': postAcademic,
        'date': timestamp,
      };

  static PostsAcademicModel fromJson(Map<String, dynamic> json) =>
      PostsAcademicModel(
        id: json['id'] ?? '',
        userID: json['userID'] ?? '',
        fullName: json['full_name'] ?? '',
        titlePost: json['title_post'] ?? '',
        postAcademic: json['post_academic'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
