import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message
@immutable
class Message extends TdObject {
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.isFromOffline,
    required this.canBeSaved,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.importInfo,
    this.interactionInfo,
    required this.unreadReactions,
    this.factCheck,
    this.replyTo,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
    this.selfDestructType,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.senderBusinessBotUserId,
    required this.senderBoostCount,
    this.authorSignature,
    required this.mediaAlbumId,
    required this.effectId,
    required this.hasSensitiveContent,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
  });

  /// [id] Message identifier; unique for the chat to which the message belongs
  final int id;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sendingState] The sending state of the message; may be null if the
  /// message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null if the
  /// message isn't scheduled
  final MessageSchedulingState? schedulingState;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [isFromOffline] True, if the message was sent because of a scheduled
  /// action by the message sender, for example, as away, or greeting service
  /// message
  final bool isFromOffline;

  /// [canBeSaved] True, if content of the message can be saved locally or
  /// copied using inputMessageForwarded or forwardMessages with copy options
  final bool canBeSaved;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media
  /// in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to
  /// channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [isTopicMessage] True, if the message is a forum topic message
  final bool isTopicMessage;

  /// [containsUnreadMention] True, if the message contains an unread mention
  /// for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent; 0 for
  /// scheduled messages
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last
  /// edited; 0 for scheduled messages
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null if
  /// none or unknown
  final MessageForwardInfo? forwardInfo;

  /// [importInfo] Information about the initial message for messages created
  /// with importMessages; may be null if the message isn't imported
  final MessageImportInfo? importInfo;

  /// [interactionInfo] Information about interactions with the message; may be
  /// null if none
  final MessageInteractionInfo? interactionInfo;

  /// [unreadReactions] Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// [factCheck] Information about fact-check added to the message; may be null
  /// if none
  final FactCheck? factCheck;

  /// [replyTo] Information about the message or the story this message is
  /// replying to; may be null if none
  final MessageReplyTo? replyTo;

  /// [messageThreadId] If non-zero, the identifier of the message thread the
  /// message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// [savedMessagesTopicId] Identifier of the Saved Messages topic for the
  /// message; 0 for messages not from Saved Messages
  final int savedMessagesTopicId;

  /// [selfDestructType] The message's self-destruct type; may be null if none
  final MessageSelfDestructType? selfDestructType;

  /// [selfDestructIn] Time left before the message self-destruct timer expires,
  /// in seconds; 0 if self-destruction isn't scheduled yet
  final double selfDestructIn;

  /// [autoDeleteIn] Time left before the message will be automatically deleted
  /// by message_auto_delete_time setting of the chat, in seconds; 0 if never
  final double autoDeleteIn;

  /// [viaBotUserId] If non-zero, the user identifier of the inline bot through
  /// which this message was sent
  final int viaBotUserId;

  /// [senderBusinessBotUserId] If non-zero, the user identifier of the business
  /// bot that sent this message
  final int senderBusinessBotUserId;

  /// [senderBoostCount] Number of times the sender of the message boosted the
  /// supergroup at the time the message was sent; 0 if none or unknown. For
  /// messages sent by the current user, supergroupFullInfo.my_boost_count must
  /// be used instead
  final int senderBoostCount;

  /// [authorSignature] For channel posts and anonymous group messages, optional
  /// author signature
  final String? authorSignature;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to; 0 if
  /// none. Only audios, documents, photos and videos can be grouped together in
  /// albums
  final int mediaAlbumId;

  /// [effectId] Unique identifier of the effect added to the message; 0 if none
  final int effectId;

  /// [hasSensitiveContent] True, if media content of the message must be hidden
  /// with 18+ spoiler
  final bool hasSensitiveContent;

  /// [restrictionReason] If non-empty, contains a human-readable description of
  /// the reason why access to this message must be restricted
  final String restrictionReason;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'message';

  static Message? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Message(
      id: json['id'] as int,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      chatId: json['chat_id'] as int,
      sendingState: MessageSendingState.fromJson(
          json['sending_state'] as Map<String, dynamic>?),
      schedulingState: MessageSchedulingState.fromJson(
          json['scheduling_state'] as Map<String, dynamic>?),
      isOutgoing: json['is_outgoing'] as bool,
      isPinned: json['is_pinned'] as bool,
      isFromOffline: json['is_from_offline'] as bool,
      canBeSaved: json['can_be_saved'] as bool,
      hasTimestampedMedia: json['has_timestamped_media'] as bool,
      isChannelPost: json['is_channel_post'] as bool,
      isTopicMessage: json['is_topic_message'] as bool,
      containsUnreadMention: json['contains_unread_mention'] as bool,
      date: json['date'] as int,
      editDate: json['edit_date'] as int,
      forwardInfo: MessageForwardInfo.fromJson(
          json['forward_info'] as Map<String, dynamic>?),
      importInfo: MessageImportInfo.fromJson(
          json['import_info'] as Map<String, dynamic>?),
      interactionInfo: MessageInteractionInfo.fromJson(
          json['interaction_info'] as Map<String, dynamic>?),
      unreadReactions: List<UnreadReaction>.from(
          ((json['unread_reactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UnreadReaction.fromJson(item))
              .toList()),
      factCheck:
          FactCheck.fromJson(json['fact_check'] as Map<String, dynamic>?),
      replyTo:
          MessageReplyTo.fromJson(json['reply_to'] as Map<String, dynamic>?),
      messageThreadId: json['message_thread_id'] as int,
      savedMessagesTopicId: json['saved_messages_topic_id'] as int,
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
      selfDestructIn: (json['self_destruct_in'] as num).toDouble(),
      autoDeleteIn: (json['auto_delete_in'] as num).toDouble(),
      viaBotUserId: json['via_bot_user_id'] as int,
      senderBusinessBotUserId: json['sender_business_bot_user_id'] as int,
      senderBoostCount: json['sender_boost_count'] as int,
      authorSignature: json['author_signature'] as String?,
      mediaAlbumId: int.tryParse(json['media_album_id']) ?? 0,
      effectId: int.tryParse(json['effect_id']) ?? 0,
      hasSensitiveContent: json['has_sensitive_content'] as bool,
      restrictionReason: json['restriction_reason'] as String,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_id': senderId.toJson(),
        'chat_id': chatId,
        'sending_state': sendingState?.toJson(),
        'scheduling_state': schedulingState?.toJson(),
        'is_outgoing': isOutgoing,
        'is_pinned': isPinned,
        'is_from_offline': isFromOffline,
        'can_be_saved': canBeSaved,
        'has_timestamped_media': hasTimestampedMedia,
        'is_channel_post': isChannelPost,
        'is_topic_message': isTopicMessage,
        'contains_unread_mention': containsUnreadMention,
        'date': date,
        'edit_date': editDate,
        'forward_info': forwardInfo?.toJson(),
        'import_info': importInfo?.toJson(),
        'interaction_info': interactionInfo?.toJson(),
        'unread_reactions':
            unreadReactions.map((item) => item.toJson()).toList(),
        'fact_check': factCheck?.toJson(),
        'reply_to': replyTo?.toJson(),
        'message_thread_id': messageThreadId,
        'saved_messages_topic_id': savedMessagesTopicId,
        'self_destruct_type': selfDestructType?.toJson(),
        'self_destruct_in': selfDestructIn,
        'auto_delete_in': autoDeleteIn,
        'via_bot_user_id': viaBotUserId,
        'sender_business_bot_user_id': senderBusinessBotUserId,
        'sender_boost_count': senderBoostCount,
        'author_signature': authorSignature,
        'media_album_id': mediaAlbumId.toString(),
        'effect_id': effectId.toString(),
        'has_sensitive_content': hasSensitiveContent,
        'restriction_reason': restrictionReason,
        'content': content.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
