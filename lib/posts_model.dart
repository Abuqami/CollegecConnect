class PostsModel {
  String id;
  String userId;
  String tagName;
  String userName;
  final String post;
  final String timestamp;

  PostsModel({
    this.id = '',
    this.userId = '',
    this.tagName = '',
    this.userName = '',
    required this.post,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userID': userId,
        'tag_name': tagName,
        'user_name': userName,
        'post': post,
        'date': timestamp,
      };

  static PostsModel fromJson(Map<String, dynamic> json) => PostsModel(
        id: json['id'] ?? '',
        userId: json['userID'] ?? '',
        tagName: json['tag_name'] ?? '',
        userName: json['user_name'] ?? '',
        post: json['post'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
