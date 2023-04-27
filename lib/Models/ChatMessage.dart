
class ChatMessage {
  String MessageContent;
  String MessengerType;

  ChatMessage({required this.MessageContent, required this.MessengerType});


  String get Name {
    return MessengerType;
  }
  String setName(String name) {
    return MessengerType;
}


}