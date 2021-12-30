import '../tdapi.dart';

/// Bans a member in a chat. Members can't be banned in private or secret
/// chats. In supergroups and channels, the user will not be able to return to
/// the group on their own using invite links, etc., unless unbanned first
/// Returns [Ok]
class BanChatMember extends TdFunction {
  BanChatMember(
      {required this.chatId,
      required this.memberId,
      required this.bannedUntilDate,
      required this.revokeMessages});

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be
  /// unbanned; 0 if never. If the user is banned for more than 366 days or for
  /// less than 30 seconds from the current time, the user is considered to be
  /// banned forever. Ignored in basic groups and if a chat is banned
  final int bannedUntilDate;

  /// [revokeMessages] Pass true to delete all messages in the chat for the user
  /// that is being removed. Always true for supergroups and channels
  final bool revokeMessages;

  static const String CONSTRUCTOR = 'banChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'member_id': this.memberId.toJson(),
        'banned_until_date': this.bannedUntilDate,
        'revoke_messages': this.revokeMessages,
        '@type': CONSTRUCTOR
      };
}
