abstract class Messages {
  String sender;
  String receiver;

  Messages(
    Map<dynamic, String> map, {
    required this.sender,
    required this.receiver,
  });

  sendMessage() {}
  replyMessage() {}
  deleteMessage() {}
}
