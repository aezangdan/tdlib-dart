import '../tdapi.dart';

/// The message was originally sent on behalf of a chat
class MessageForwardOriginChat extends MessageForwardOrigin {
  MessageForwardOriginChat(
      {required this.senderChatId, required this.authorSignature});

  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat
  /// administrator, original message author signature
  final String authorSignature;

  static const String CONSTRUCTOR = 'messageForwardOriginChat';

  static MessageForwardOriginChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginChat(
        senderChatId: json['sender_chat_id'],
        authorSignature: json['author_signature']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sender_chat_id': this.senderChatId,
        'author_signature': this.authorSignature,
        '@type': CONSTRUCTOR
      };
}
