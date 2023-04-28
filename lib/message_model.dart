class MessageModel {
  String id;
  final String message;
  final String sender;
  final String timestamp;

  MessageModel({
    this.id = '',
    required this.message,
    required this.sender,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'sender': sender,
        'date': timestamp,
      };

  static MessageModel fromJson(Map<String, dynamic> json) => MessageModel(
        id: json['id'] ?? '',
        message: json['message'] ?? '',
        sender: json['sender'],
        timestamp: json['date'] ?? '',
      );
}
