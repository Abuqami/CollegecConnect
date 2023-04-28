class ChatRoomModel {
  String id;
  final String user1ID;
  final String user2ID;
  final String lastMessage;
  final String lastMessageSender;
  final String lastMessageTime;

  ChatRoomModel({
    this.id = '',
    required this.user1ID,
    required this.user2ID,
    required this.lastMessage,
    required this.lastMessageSender,
    required this.lastMessageTime,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'user1ID': user1ID,
        'user2ID': user2ID,
        'last_message': lastMessage,
        'last_message_sender': lastMessageSender,
        'last_message_time': lastMessageTime,
      };

  static ChatRoomModel fromJson(Map<String, dynamic> json) => ChatRoomModel(
        id: json['id'] ?? '',
        user1ID: json['user1ID'] ?? '',
        user2ID: json['user2ID'] ?? '',
        lastMessage: json['last_message'] ?? '',
        lastMessageSender: json['last_message_sender'] ?? '',
        lastMessageTime: json['last_message_time'] ?? '',
      );
}
