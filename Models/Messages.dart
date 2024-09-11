abstract class Messages {
  String sender;
  String receiver;
  String content;
  DateTime timestamp;
  String messageType;

  Messages({
    required this.sender,
    required this.receiver,
    required this.content,
    required this.timestamp,
    required this.messageType,
  });

  String get message;
  void sendMsg() {}
  void recvMsg() {}
  void reply(String replyContent);
  void editMessage(String newContent) {}
}
