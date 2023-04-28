class NotesModel {
  String id;
  String userId;
  final String title;
  final String note;
  final String date;

  NotesModel({
    this.id = '',
    this.userId = '',
    required this.title,
    required this.note,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'title': title,
        'note': note,
        'date': date,
      };

  static NotesModel fromJson(Map<String, dynamic> json) => NotesModel(
        id: json['id'] ?? '',
        userId: json['userId'] ?? '',
        title: json['title'] ?? '',
        note: json['note'] ?? '',
        date: json['date'] ?? '',
      );
}
