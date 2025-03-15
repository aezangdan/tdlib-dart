import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a user
@immutable
class User extends TdObject {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.usernames,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    required this.isVerified,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    required this.restrictsNewChats,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [usernames] Usernames of the user; may be null
  final Usernames? usernames;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [accentColorId] Identifier of the accent color for name, and backgrounds
  /// of profile photo, reply header, and link preview. For Telegram Premium
  /// users only
  final int? accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none. For Telegram Premium
  /// users only
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] Identifier of the accent color for the user's
  /// profile; -1 if none. For Telegram Premium users only
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the user's profile; 0 if none. For Telegram Premium
  /// users only
  final int profileBackgroundCustomEmojiId;

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram
  /// Premium badge; may be null. For Telegram Premium users only
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the
  /// current user is a contact of the user
  final bool isMutualContact;

  /// [isCloseFriend] The user is a close friend of the current user; implies
  /// that the user is a contact
  final bool isCloseFriend;

  /// [isVerified] True, if the user is verified
  final bool isVerified;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description
  /// of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this user as a fake account
  final bool isFake;

  /// [hasActiveStories] True, if the user has non-expired stories available to
  /// the current user
  final bool hasActiveStories;

  /// [hasUnreadActiveStories] True, if the user has unread non-expired stories
  /// available to the current user
  final bool hasUnreadActiveStories;

  /// [restrictsNewChats] True, if the user may restrict new chats with
  /// non-contacts. Use canSendMessageToUser to check whether the current user
  /// can message the user or try to create a chat with them
  final bool restrictsNewChats;

  /// [haveAccess] If false, the user is inaccessible, and the only information
  /// known about the user is inside this class. Identifier of the user can't be
  /// passed to any method
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to
  /// bots
  final String languageCode;

  /// [addedToAttachmentMenu] True, if the user added the current bot to
  /// attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  static const String constructor = 'user';

  static User? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return User(
      id: json['id'] is int ? json['id'] as int : 0,
      firstName: json['first_name'] is String ? json['first_name'] as String : '',
      lastName: json['last_name'] is String ? json['last_name'] as String : '',
      usernames: json['usernames'] is Map<String, dynamic> ? Usernames.fromJson(json['usernames']) : null,
      phoneNumber: json['phone_number'] is String ? json['phone_number'] as String : '',
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>?) ?? UserStatus.offline(),
      profilePhoto: json['profile_photo'] is Map<String, dynamic> ? ProfilePhoto.fromJson(json['profile_photo']) : null,
      accentColorId: json['accent_color_id'] is int ? json['accent_color_id'] as int : null,
      backgroundCustomEmojiId: json['background_custom_emoji_id'] is int ? json['background_custom_emoji_id'] as int
          : int.tryParse(json['background_custom_emoji_id'].toString()) ?? 0,
      profileAccentColorId: json['profile_accent_color_id'] is int ? json['profile_accent_color_id'] as int : -1,
      profileBackgroundCustomEmojiId: json['profile_background_custom_emoji_id'] is int ? json['profile_background_custom_emoji_id'] as int
          : int.tryParse(json['profile_background_custom_emoji_id'].toString()) ?? 0,
      emojiStatus: json['emoji_status'] is Map<String, dynamic> ? EmojiStatus.fromJson(json['emoji_status']) : null,
      isContact: json['is_contact'] is bool ? json['is_contact'] as bool : false,
      isMutualContact: json['is_mutual_contact'] is bool ? json['is_mutual_contact'] as bool : false,
      isCloseFriend: json['is_close_friend'] is bool ? json['is_close_friend'] as bool : false,
      isVerified: json['is_verified'] is bool ? json['is_verified'] as bool : false,
      isPremium: json['is_premium'] is bool ? json['is_premium'] as bool : false,
      isSupport: json['is_support'] is bool ? json['is_support'] as bool : false,
      restrictionReason: json['restriction_reason'] is String ? json['restriction_reason'] as String : '',
      isScam: json['is_scam'] is bool ? json['is_scam'] as bool : false,
      isFake: json['is_fake'] is bool ? json['is_fake'] as bool : false,
      hasActiveStories: json['has_active_stories'] is bool ? json['has_active_stories'] as bool : false,
      hasUnreadActiveStories: json['has_unread_active_stories'] is bool ? json['has_unread_active_stories'] as bool : false,
      restrictsNewChats: json['restricts_new_chats'] is bool ? json['restricts_new_chats'] as bool : false,
      haveAccess: json['have_access'] is bool ? json['have_access'] as bool : false,
      type: UserType.fromJson(json['type'] as Map<String, dynamic>?) ?? UserType.regular(),
      languageCode: json['language_code'] is String ? json['language_code'] as String : '',
      addedToAttachmentMenu: json['added_to_attachment_menu'] is bool ? json['added_to_attachment_menu'] as bool : false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'usernames': usernames?.toJson(),
        'phone_number': phoneNumber,
        'status': status.toJson(),
        'profile_photo': profilePhoto?.toJson(),
        'accent_color_id': 0,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        'emoji_status': emojiStatus?.toJson(),
        'is_contact': isContact,
        'is_mutual_contact': isMutualContact,
        'is_close_friend': isCloseFriend,
        'is_verified': isVerified,
        'is_premium': isPremium,
        'is_support': isSupport,
        'restriction_reason': restrictionReason,
        'is_scam': isScam,
        'is_fake': isFake,
        'has_active_stories': hasActiveStories,
        'has_unread_active_stories': hasUnreadActiveStories,
        'restricts_new_chats': restrictsNewChats,
        'have_access': haveAccess,
        'type': type.toJson(),
        'language_code': languageCode,
        'added_to_attachment_menu': addedToAttachmentMenu,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
