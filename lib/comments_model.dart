class CommentsModel {
  String id;
  String tagName;
  String fullName;
  final String comment;
  final String timestamp;

  CommentsModel({
    this.id = '',
    this.tagName = '',
    this.fullName = '',
    required this.comment,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'tag_name': tagName,
        'full_name': fullName,
        'comment': comment,
        'date': timestamp,
      };

  static CommentsModel fromJson(Map<String, dynamic> json) => CommentsModel(
        id: json['id'] ?? '',
        tagName: json['tag_name'] ?? '',
        fullName: json['full_name'] ?? '',
        comment: json['comment'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
