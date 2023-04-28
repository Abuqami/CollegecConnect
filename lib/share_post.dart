class SharePost {
  String id;
  late final String fullName;
  late final String emailAddress;
  late final String titlePost;
  late final String postAcademic;
  late final String date;

  SharePost({
    this.id = '',
    required this.fullName,
    required this.emailAddress,
    required this.titlePost,
    required this.postAcademic,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
        'email_address': emailAddress,
        'title_post': titlePost,
        'post_academic': postAcademic,
        'date': date,
      };

  static SharePost fromJson(Map<String, dynamic> json) => SharePost(
        id: json['id'] ?? '',
        fullName: json['full_name'] ?? '',
        emailAddress: json['email_address'] ?? '',
        titlePost: json['title_post'] ?? '',
        postAcademic: json['post_academic'] ?? '',
        date: json['date'] ?? '',
      );
}
