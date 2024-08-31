class ChatMessage {
  final String message;
  final bool isSentByMe; // true if the message is sent by the current user

  ChatMessage({required this.message, required this.isSentByMe});
}
