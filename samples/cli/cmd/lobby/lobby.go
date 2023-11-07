// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"github.com/AccelByte/sample-apps/cmd/lobby/admin"
	"github.com/AccelByte/sample-apps/cmd/lobby/config"
	"github.com/AccelByte/sample-apps/cmd/lobby/friends"
	"github.com/AccelByte/sample-apps/cmd/lobby/lobbyOperations"
	"github.com/AccelByte/sample-apps/cmd/lobby/notification"
	"github.com/AccelByte/sample-apps/cmd/lobby/party"
	"github.com/AccelByte/sample-apps/cmd/lobby/player"
	"github.com/AccelByte/sample-apps/cmd/lobby/presence"
	"github.com/AccelByte/sample-apps/cmd/lobby/profanity"
	"github.com/AccelByte/sample-apps/cmd/lobby/thirdParty"
	"github.com/spf13/cobra"
)

// LobbyCmd represents the service's child command
var LobbyCmd = &cobra.Command{
	Use:   "Lobby",
	Short: "Lobby to get all the commands",
}

func init() {
	LobbyCmd.AddCommand(friends.GetUserFriendsUpdatedCmd)
	LobbyCmd.AddCommand(friends.GetUserIncomingFriendsCmd)
	LobbyCmd.AddCommand(friends.GetUserIncomingFriendsWithTimeCmd)
	LobbyCmd.AddCommand(friends.GetUserOutgoingFriendsCmd)
	LobbyCmd.AddCommand(friends.GetUserOutgoingFriendsWithTimeCmd)
	LobbyCmd.AddCommand(friends.GetUserFriendsWithPlatformCmd)
	LobbyCmd.AddCommand(friends.UserRequestFriendCmd)
	LobbyCmd.AddCommand(friends.UserAcceptFriendRequestCmd)
	LobbyCmd.AddCommand(friends.UserCancelFriendRequestCmd)
	LobbyCmd.AddCommand(friends.UserRejectFriendRequestCmd)
	LobbyCmd.AddCommand(friends.UserGetFriendshipStatusCmd)
	LobbyCmd.AddCommand(friends.UserUnfriendRequestCmd)
	LobbyCmd.AddCommand(friends.AddFriendsWithoutConfirmationCmd)
	LobbyCmd.AddCommand(friends.BulkDeleteFriendsCmd)
	LobbyCmd.AddCommand(friends.SyncNativeFriendsCmd)
	LobbyCmd.AddCommand(config.AdminGetAllConfigV1Cmd)
	LobbyCmd.AddCommand(config.AdminGetConfigV1Cmd)
	LobbyCmd.AddCommand(config.AdminUpdateConfigV1Cmd)
	LobbyCmd.AddCommand(config.AdminExportConfigV1Cmd)
	LobbyCmd.AddCommand(config.AdminImportConfigV1Cmd)
	LobbyCmd.AddCommand(friends.GetListOfFriendsCmd)
	LobbyCmd.AddCommand(friends.GetIncomingFriendRequestsCmd)
	LobbyCmd.AddCommand(friends.GetOutgoingFriendRequestsCmd)
	LobbyCmd.AddCommand(admin.AdminGetGlobalConfigCmd)
	LobbyCmd.AddCommand(admin.AdminUpdateGlobalConfigCmd)
	LobbyCmd.AddCommand(admin.AdminDeleteGlobalConfigCmd)
	LobbyCmd.AddCommand(notification.SendMultipleUsersFreeformNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendUsersFreeformNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendPartyFreeformNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendPartyTemplatedNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.GetAllNotificationTemplatesV1AdminCmd)
	LobbyCmd.AddCommand(notification.CreateNotificationTemplateV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendUsersTemplatedNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.GetTemplateSlugLocalizationsTemplateV1AdminCmd)
	LobbyCmd.AddCommand(notification.DeleteNotificationTemplateSlugV1AdminCmd)
	LobbyCmd.AddCommand(notification.GetSingleTemplateLocalizationV1AdminCmd)
	LobbyCmd.AddCommand(notification.UpdateTemplateLocalizationV1AdminCmd)
	LobbyCmd.AddCommand(notification.DeleteTemplateLocalizationV1AdminCmd)
	LobbyCmd.AddCommand(notification.PublishTemplateLocalizationV1AdminCmd)
	LobbyCmd.AddCommand(notification.GetAllNotificationTopicsV1AdminCmd)
	LobbyCmd.AddCommand(notification.CreateNotificationTopicV1AdminCmd)
	LobbyCmd.AddCommand(notification.GetNotificationTopicV1AdminCmd)
	LobbyCmd.AddCommand(notification.UpdateNotificationTopicV1AdminCmd)
	LobbyCmd.AddCommand(notification.DeleteNotificationTopicV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendSpecificUserFreeformNotificationV1AdminCmd)
	LobbyCmd.AddCommand(notification.SendSpecificUserTemplatedNotificationV1AdminCmd)
	LobbyCmd.AddCommand(party.AdminGetPartyDataV1Cmd)
	LobbyCmd.AddCommand(lobbyOperations.AdminUpdatePartyAttributesV1Cmd)
	LobbyCmd.AddCommand(lobbyOperations.AdminJoinPartyV1Cmd)
	LobbyCmd.AddCommand(party.AdminGetUserPartyV1Cmd)
	LobbyCmd.AddCommand(player.AdminGetLobbyCCUCmd)
	LobbyCmd.AddCommand(player.AdminGetBulkPlayerBlockedPlayersV1Cmd)
	LobbyCmd.AddCommand(player.AdminGetAllPlayerSessionAttributeCmd)
	LobbyCmd.AddCommand(player.AdminSetPlayerSessionAttributeCmd)
	LobbyCmd.AddCommand(player.AdminGetPlayerSessionAttributeCmd)
	LobbyCmd.AddCommand(player.AdminGetPlayerBlockedPlayersV1Cmd)
	LobbyCmd.AddCommand(player.AdminGetPlayerBlockedByPlayersV1Cmd)
	LobbyCmd.AddCommand(player.AdminBulkBlockPlayersV1Cmd)
	LobbyCmd.AddCommand(profanity.AdminDebugProfanityFiltersCmd)
	LobbyCmd.AddCommand(profanity.AdminGetProfanityListFiltersV1Cmd)
	LobbyCmd.AddCommand(profanity.AdminAddProfanityFilterIntoListCmd)
	LobbyCmd.AddCommand(profanity.AdminAddProfanityFiltersCmd)
	LobbyCmd.AddCommand(profanity.AdminImportProfanityFiltersFromFileCmd)
	LobbyCmd.AddCommand(profanity.AdminDeleteProfanityFilterCmd)
	LobbyCmd.AddCommand(profanity.AdminGetProfanityListsCmd)
	LobbyCmd.AddCommand(profanity.AdminCreateProfanityListCmd)
	LobbyCmd.AddCommand(profanity.AdminUpdateProfanityListCmd)
	LobbyCmd.AddCommand(profanity.AdminDeleteProfanityListCmd)
	LobbyCmd.AddCommand(profanity.AdminGetProfanityRuleCmd)
	LobbyCmd.AddCommand(profanity.AdminSetProfanityRuleForNamespaceCmd)
	LobbyCmd.AddCommand(profanity.AdminVerifyMessageProfanityResponseCmd)
	LobbyCmd.AddCommand(thirdParty.AdminGetThirdPartyConfigCmd)
	LobbyCmd.AddCommand(thirdParty.AdminUpdateThirdPartyConfigCmd)
	LobbyCmd.AddCommand(thirdParty.AdminCreateThirdPartyConfigCmd)
	LobbyCmd.AddCommand(thirdParty.AdminDeleteThirdPartyConfigCmd)
	LobbyCmd.AddCommand(lobbyOperations.PublicGetMessagesCmd)
	LobbyCmd.AddCommand(party.PublicGetPartyDataV1Cmd)
	LobbyCmd.AddCommand(party.PublicUpdatePartyAttributesV1Cmd)
	LobbyCmd.AddCommand(party.PublicSetPartyLimitV1Cmd)
	LobbyCmd.AddCommand(player.PublicGetPlayerBlockedPlayersV1Cmd)
	LobbyCmd.AddCommand(player.PublicGetPlayerBlockedByPlayersV1Cmd)
	LobbyCmd.AddCommand(presence.UsersPresenceHandlerV1Cmd)
	LobbyCmd.AddCommand(admin.FreeFormNotificationCmd)
	LobbyCmd.AddCommand(admin.NotificationWithTemplateCmd)
	LobbyCmd.AddCommand(admin.GetGameTemplateCmd)
	LobbyCmd.AddCommand(admin.CreateTemplateCmd)
	LobbyCmd.AddCommand(admin.GetSlugTemplateCmd)
	LobbyCmd.AddCommand(admin.DeleteTemplateSlugCmd)
	LobbyCmd.AddCommand(admin.GetLocalizationTemplateCmd)
	LobbyCmd.AddCommand(admin.UpdateLocalizationTemplateCmd)
	LobbyCmd.AddCommand(admin.DeleteTemplateLocalizationCmd)
	LobbyCmd.AddCommand(admin.PublishTemplateCmd)
	LobbyCmd.AddCommand(notification.GetTopicByNamespaceCmd)
	LobbyCmd.AddCommand(notification.CreateTopicCmd)
	LobbyCmd.AddCommand(notification.GetTopicByTopicNameCmd)
	LobbyCmd.AddCommand(notification.UpdateTopicByTopicNameCmd)
	LobbyCmd.AddCommand(notification.DeleteTopicByTopicNameCmd)
	LobbyCmd.AddCommand(notification.FreeFormNotificationByUserIDCmd)
	LobbyCmd.AddCommand(notification.NotificationWithTemplateByUserIDCmd)
}
