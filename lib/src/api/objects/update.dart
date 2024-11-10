import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains notifications about data changes
@immutable
abstract class Update extends TdObject {
  const Update();

  static const String constructor = 'update';

  /// Inherited by:
  /// [UpdateAccentColors]
  /// [UpdateActiveEmojiReactions]
  /// [UpdateActiveLiveLocationMessages]
  /// [UpdateActiveNotifications]
  /// [UpdateAnimatedEmojiMessageClicked]
  /// [UpdateAnimationSearchParameters]
  /// [UpdateApplicationVerificationRequired]
  /// [UpdateAttachmentMenuBots]
  /// [UpdateAuthorizationState]
  /// [UpdateAutosaveSettings]
  /// [UpdateAvailableMessageEffects]
  /// [UpdateBasicGroupFullInfo]
  /// [UpdateBasicGroup]
  /// [UpdateBusinessConnection]
  /// [UpdateBusinessMessageEdited]
  /// [UpdateBusinessMessagesDeleted]
  /// [UpdateCall]
  /// [UpdateChatAccentColors]
  /// [UpdateChatActionBar]
  /// [UpdateChatAction]
  /// [UpdateChatActiveStories]
  /// [UpdateChatAddedToList]
  /// [UpdateChatAvailableReactions]
  /// [UpdateChatBackground]
  /// [UpdateChatBlockList]
  /// [UpdateChatBoost]
  /// [UpdateChatBusinessBotManageBar]
  /// [UpdateChatDefaultDisableNotification]
  /// [UpdateChatDraftMessage]
  /// [UpdateChatEmojiStatus]
  /// [UpdateChatFolders]
  /// [UpdateChatHasProtectedContent]
  /// [UpdateChatHasScheduledMessages]
  /// [UpdateChatIsMarkedAsUnread]
  /// [UpdateChatIsTranslatable]
  /// [UpdateChatLastMessage]
  /// [UpdateChatMember]
  /// [UpdateChatMessageAutoDeleteTime]
  /// [UpdateChatMessageSender]
  /// [UpdateChatNotificationSettings]
  /// [UpdateChatOnlineMemberCount]
  /// [UpdateChatPendingJoinRequests]
  /// [UpdateChatPermissions]
  /// [UpdateChatPhoto]
  /// [UpdateChatPosition]
  /// [UpdateChatReadInbox]
  /// [UpdateChatReadOutbox]
  /// [UpdateChatRemovedFromList]
  /// [UpdateChatReplyMarkup]
  /// [UpdateChatRevenueAmount]
  /// [UpdateChatTheme]
  /// [UpdateChatThemes]
  /// [UpdateChatTitle]
  /// [UpdateChatUnreadMentionCount]
  /// [UpdateChatUnreadReactionCount]
  /// [UpdateChatVideoChat]
  /// [UpdateChatViewAsTopics]
  /// [UpdateConnectionState]
  /// [UpdateContactCloseBirthdays]
  /// [UpdateDefaultBackground]
  /// [UpdateDefaultReactionType]
  /// [UpdateDeleteMessages]
  /// [UpdateDiceEmojis]
  /// [UpdateFavoriteStickers]
  /// [UpdateFileAddedToDownloads]
  /// [UpdateFileDownload]
  /// [UpdateFileDownloads]
  /// [UpdateFileGenerationStart]
  /// [UpdateFileGenerationStop]
  /// [UpdateFileRemovedFromDownloads]
  /// [UpdateFile]
  /// [UpdateForumTopicInfo]
  /// [UpdateGroupCallParticipant]
  /// [UpdateGroupCall]
  /// [UpdateHavePendingNotifications]
  /// [UpdateInstalledStickerSets]
  /// [UpdateLanguagePackStrings]
  /// [UpdateMessageContentOpened]
  /// [UpdateMessageContent]
  /// [UpdateMessageEdited]
  /// [UpdateMessageFactCheck]
  /// [UpdateMessageInteractionInfo]
  /// [UpdateMessageIsPinned]
  /// [UpdateMessageLiveLocationViewed]
  /// [UpdateMessageMentionRead]
  /// [UpdateMessageReaction]
  /// [UpdateMessageReactions]
  /// [UpdateMessageSendAcknowledged]
  /// [UpdateMessageSendFailed]
  /// [UpdateMessageSendSucceeded]
  /// [UpdateMessageUnreadReactions]
  /// [UpdateNewBusinessCallbackQuery]
  /// [UpdateNewBusinessMessage]
  /// [UpdateNewCallSignalingData]
  /// [UpdateNewCallbackQuery]
  /// [UpdateNewChatJoinRequest]
  /// [UpdateNewChat]
  /// [UpdateNewChosenInlineResult]
  /// [UpdateNewCustomEvent]
  /// [UpdateNewCustomQuery]
  /// [UpdateNewInlineCallbackQuery]
  /// [UpdateNewInlineQuery]
  /// [UpdateNewMessage]
  /// [UpdateNewPreCheckoutQuery]
  /// [UpdateNewShippingQuery]
  /// [UpdateNotificationGroup]
  /// [UpdateNotification]
  /// [UpdateOption]
  /// [UpdateOwnedStarCount]
  /// [UpdatePaidMediaPurchased]
  /// [UpdatePollAnswer]
  /// [UpdatePoll]
  /// [UpdateProfileAccentColors]
  /// [UpdateQuickReplyShortcutDeleted]
  /// [UpdateQuickReplyShortcutMessages]
  /// [UpdateQuickReplyShortcut]
  /// [UpdateQuickReplyShortcuts]
  /// [UpdateReactionNotificationSettings]
  /// [UpdateRecentStickers]
  /// [UpdateSavedAnimations]
  /// [UpdateSavedMessagesTags]
  /// [UpdateSavedMessagesTopicCount]
  /// [UpdateSavedMessagesTopic]
  /// [UpdateSavedNotificationSounds]
  /// [UpdateScopeNotificationSettings]
  /// [UpdateSecretChat]
  /// [UpdateServiceNotification]
  /// [UpdateSpeechRecognitionTrial]
  /// [UpdateSpeedLimitNotification]
  /// [UpdateStarRevenueStatus]
  /// [UpdateStickerSet]
  /// [UpdateStoryDeleted]
  /// [UpdateStoryListChatCount]
  /// [UpdateStorySendFailed]
  /// [UpdateStorySendSucceeded]
  /// [UpdateStoryStealthMode]
  /// [UpdateStory]
  /// [UpdateSuggestedActions]
  /// [UpdateSupergroupFullInfo]
  /// [UpdateSupergroup]
  /// [UpdateTermsOfService]
  /// [UpdateTrendingStickerSets]
  /// [UpdateUnconfirmedSession]
  /// [UpdateUnreadChatCount]
  /// [UpdateUnreadMessageCount]
  /// [UpdateUserFullInfo]
  /// [UpdateUserPrivacySettingRules]
  /// [UpdateUserStatus]
  /// [UpdateUser]
  /// [UpdateVideoPublished]
  /// [UpdateWebAppMessageSent]
  static Update? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpdateAccentColors.constructor:
        return UpdateAccentColors.fromJson(json);
      case UpdateActiveEmojiReactions.constructor:
        return UpdateActiveEmojiReactions.fromJson(json);
      case UpdateActiveLiveLocationMessages.constructor:
        return UpdateActiveLiveLocationMessages.fromJson(json);
      case UpdateActiveNotifications.constructor:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateAnimatedEmojiMessageClicked.constructor:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);
      case UpdateAnimationSearchParameters.constructor:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateApplicationVerificationRequired.constructor:
        return UpdateApplicationVerificationRequired.fromJson(json);
      case UpdateAttachmentMenuBots.constructor:
        return UpdateAttachmentMenuBots.fromJson(json);
      case UpdateAuthorizationState.constructor:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateAutosaveSettings.constructor:
        return UpdateAutosaveSettings.fromJson(json);
      case UpdateAvailableMessageEffects.constructor:
        return UpdateAvailableMessageEffects.fromJson(json);
      case UpdateBasicGroup.constructor:
        return UpdateBasicGroup.fromJson(json);
      case UpdateBasicGroupFullInfo.constructor:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateBusinessConnection.constructor:
        return UpdateBusinessConnection.fromJson(json);
      case UpdateBusinessMessageEdited.constructor:
        return UpdateBusinessMessageEdited.fromJson(json);
      case UpdateBusinessMessagesDeleted.constructor:
        return UpdateBusinessMessagesDeleted.fromJson(json);
      case UpdateCall.constructor:
        return UpdateCall.fromJson(json);
      case UpdateChatAccentColors.constructor:
        return UpdateChatAccentColors.fromJson(json);
      case UpdateChatAction.constructor:
        return UpdateChatAction.fromJson(json);
      case UpdateChatActionBar.constructor:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatActiveStories.constructor:
        return UpdateChatActiveStories.fromJson(json);
      case UpdateChatAddedToList.constructor:
        return UpdateChatAddedToList.fromJson(json);
      case UpdateChatAvailableReactions.constructor:
        return UpdateChatAvailableReactions.fromJson(json);
      case UpdateChatBackground.constructor:
        return UpdateChatBackground.fromJson(json);
      case UpdateChatBlockList.constructor:
        return UpdateChatBlockList.fromJson(json);
      case UpdateChatBoost.constructor:
        return UpdateChatBoost.fromJson(json);
      case UpdateChatBusinessBotManageBar.constructor:
        return UpdateChatBusinessBotManageBar.fromJson(json);
      case UpdateChatDefaultDisableNotification.constructor:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatDraftMessage.constructor:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatEmojiStatus.constructor:
        return UpdateChatEmojiStatus.fromJson(json);
      case UpdateChatFolders.constructor:
        return UpdateChatFolders.fromJson(json);
      case UpdateChatHasProtectedContent.constructor:
        return UpdateChatHasProtectedContent.fromJson(json);
      case UpdateChatHasScheduledMessages.constructor:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatIsMarkedAsUnread.constructor:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatIsTranslatable.constructor:
        return UpdateChatIsTranslatable.fromJson(json);
      case UpdateChatLastMessage.constructor:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatMember.constructor:
        return UpdateChatMember.fromJson(json);
      case UpdateChatMessageAutoDeleteTime.constructor:
        return UpdateChatMessageAutoDeleteTime.fromJson(json);
      case UpdateChatMessageSender.constructor:
        return UpdateChatMessageSender.fromJson(json);
      case UpdateChatNotificationSettings.constructor:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateChatOnlineMemberCount.constructor:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateChatPendingJoinRequests.constructor:
        return UpdateChatPendingJoinRequests.fromJson(json);
      case UpdateChatPermissions.constructor:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatPhoto.constructor:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatPosition.constructor:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatReadInbox.constructor:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.constructor:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatRemovedFromList.constructor:
        return UpdateChatRemovedFromList.fromJson(json);
      case UpdateChatReplyMarkup.constructor:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatRevenueAmount.constructor:
        return UpdateChatRevenueAmount.fromJson(json);
      case UpdateChatTheme.constructor:
        return UpdateChatTheme.fromJson(json);
      case UpdateChatThemes.constructor:
        return UpdateChatThemes.fromJson(json);
      case UpdateChatTitle.constructor:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatUnreadMentionCount.constructor:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatUnreadReactionCount.constructor:
        return UpdateChatUnreadReactionCount.fromJson(json);
      case UpdateChatVideoChat.constructor:
        return UpdateChatVideoChat.fromJson(json);
      case UpdateChatViewAsTopics.constructor:
        return UpdateChatViewAsTopics.fromJson(json);
      case UpdateConnectionState.constructor:
        return UpdateConnectionState.fromJson(json);
      case UpdateContactCloseBirthdays.constructor:
        return UpdateContactCloseBirthdays.fromJson(json);
      case UpdateDefaultBackground.constructor:
        return UpdateDefaultBackground.fromJson(json);
      case UpdateDefaultReactionType.constructor:
        return UpdateDefaultReactionType.fromJson(json);
      case UpdateDeleteMessages.constructor:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateDiceEmojis.constructor:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateFavoriteStickers.constructor:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateFile.constructor:
        return UpdateFile.fromJson(json);
      case UpdateFileAddedToDownloads.constructor:
        return UpdateFileAddedToDownloads.fromJson(json);
      case UpdateFileDownload.constructor:
        return UpdateFileDownload.fromJson(json);
      case UpdateFileDownloads.constructor:
        return UpdateFileDownloads.fromJson(json);
      case UpdateFileGenerationStart.constructor:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.constructor:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateFileRemovedFromDownloads.constructor:
        return UpdateFileRemovedFromDownloads.fromJson(json);
      case UpdateForumTopicInfo.constructor:
        return UpdateForumTopicInfo.fromJson(json);
      case UpdateGroupCall.constructor:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.constructor:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateHavePendingNotifications.constructor:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateInstalledStickerSets.constructor:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateLanguagePackStrings.constructor:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateMessageContent.constructor:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageContentOpened.constructor:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageEdited.constructor:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageFactCheck.constructor:
        return UpdateMessageFactCheck.fromJson(json);
      case UpdateMessageInteractionInfo.constructor:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageIsPinned.constructor:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageLiveLocationViewed.constructor:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateMessageMentionRead.constructor:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageReaction.constructor:
        return UpdateMessageReaction.fromJson(json);
      case UpdateMessageReactions.constructor:
        return UpdateMessageReactions.fromJson(json);
      case UpdateMessageSendAcknowledged.constructor:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendFailed.constructor:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageSendSucceeded.constructor:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageUnreadReactions.constructor:
        return UpdateMessageUnreadReactions.fromJson(json);
      case UpdateNewBusinessCallbackQuery.constructor:
        return UpdateNewBusinessCallbackQuery.fromJson(json);
      case UpdateNewBusinessMessage.constructor:
        return UpdateNewBusinessMessage.fromJson(json);
      case UpdateNewCallSignalingData.constructor:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateNewCallbackQuery.constructor:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewChat.constructor:
        return UpdateNewChat.fromJson(json);
      case UpdateNewChatJoinRequest.constructor:
        return UpdateNewChatJoinRequest.fromJson(json);
      case UpdateNewChosenInlineResult.constructor:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCustomEvent.constructor:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.constructor:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.constructor:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewInlineQuery.constructor:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewMessage.constructor:
        return UpdateNewMessage.fromJson(json);
      case UpdateNewPreCheckoutQuery.constructor:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewShippingQuery.constructor:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNotification.constructor:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.constructor:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateOption.constructor:
        return UpdateOption.fromJson(json);
      case UpdateOwnedStarCount.constructor:
        return UpdateOwnedStarCount.fromJson(json);
      case UpdatePaidMediaPurchased.constructor:
        return UpdatePaidMediaPurchased.fromJson(json);
      case UpdatePoll.constructor:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.constructor:
        return UpdatePollAnswer.fromJson(json);
      case UpdateProfileAccentColors.constructor:
        return UpdateProfileAccentColors.fromJson(json);
      case UpdateQuickReplyShortcut.constructor:
        return UpdateQuickReplyShortcut.fromJson(json);
      case UpdateQuickReplyShortcutDeleted.constructor:
        return UpdateQuickReplyShortcutDeleted.fromJson(json);
      case UpdateQuickReplyShortcutMessages.constructor:
        return UpdateQuickReplyShortcutMessages.fromJson(json);
      case UpdateQuickReplyShortcuts.constructor:
        return UpdateQuickReplyShortcuts.fromJson(json);
      case UpdateReactionNotificationSettings.constructor:
        return UpdateReactionNotificationSettings.fromJson(json);
      case UpdateRecentStickers.constructor:
        return UpdateRecentStickers.fromJson(json);
      case UpdateSavedAnimations.constructor:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSavedMessagesTags.constructor:
        return UpdateSavedMessagesTags.fromJson(json);
      case UpdateSavedMessagesTopic.constructor:
        return UpdateSavedMessagesTopic.fromJson(json);
      case UpdateSavedMessagesTopicCount.constructor:
        return UpdateSavedMessagesTopicCount.fromJson(json);
      case UpdateSavedNotificationSounds.constructor:
        return UpdateSavedNotificationSounds.fromJson(json);
      case UpdateScopeNotificationSettings.constructor:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateSecretChat.constructor:
        return UpdateSecretChat.fromJson(json);
      case UpdateServiceNotification.constructor:
        return UpdateServiceNotification.fromJson(json);
      case UpdateSpeechRecognitionTrial.constructor:
        return UpdateSpeechRecognitionTrial.fromJson(json);
      case UpdateSpeedLimitNotification.constructor:
        return UpdateSpeedLimitNotification.fromJson(json);
      case UpdateStarRevenueStatus.constructor:
        return UpdateStarRevenueStatus.fromJson(json);
      case UpdateStickerSet.constructor:
        return UpdateStickerSet.fromJson(json);
      case UpdateStory.constructor:
        return UpdateStory.fromJson(json);
      case UpdateStoryDeleted.constructor:
        return UpdateStoryDeleted.fromJson(json);
      case UpdateStoryListChatCount.constructor:
        return UpdateStoryListChatCount.fromJson(json);
      case UpdateStorySendFailed.constructor:
        return UpdateStorySendFailed.fromJson(json);
      case UpdateStorySendSucceeded.constructor:
        return UpdateStorySendSucceeded.fromJson(json);
      case UpdateStoryStealthMode.constructor:
        return UpdateStoryStealthMode.fromJson(json);
      case UpdateSuggestedActions.constructor:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateSupergroup.constructor:
        return UpdateSupergroup.fromJson(json);
      case UpdateSupergroupFullInfo.constructor:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateTermsOfService.constructor:
        return UpdateTermsOfService.fromJson(json);
      case UpdateTrendingStickerSets.constructor:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateUnconfirmedSession.constructor:
        return UpdateUnconfirmedSession.fromJson(json);
      case UpdateUnreadChatCount.constructor:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateUnreadMessageCount.constructor:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUser.constructor:
        return UpdateUser.fromJson(json);
      case UpdateUserFullInfo.constructor:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateUserPrivacySettingRules.constructor:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUserStatus.constructor:
        return UpdateUserStatus.fromJson(json);
      case UpdateVideoPublished.constructor:
        return UpdateVideoPublished.fromJson(json);
      case UpdateWebAppMessageSent.constructor:
        return UpdateWebAppMessageSent.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
