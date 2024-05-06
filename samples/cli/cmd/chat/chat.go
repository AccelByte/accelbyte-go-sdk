// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chat

import (
	"github.com/AccelByte/sample-apps/cmd/chat/config"
	"github.com/AccelByte/sample-apps/cmd/chat/inbox"
	"github.com/AccelByte/sample-apps/cmd/chat/moderation"
	"github.com/AccelByte/sample-apps/cmd/chat/operations"
	"github.com/AccelByte/sample-apps/cmd/chat/profanity"
	"github.com/AccelByte/sample-apps/cmd/chat/topic"
	"github.com/spf13/cobra"
)

// ChatCmd represents the service's child command
var ChatCmd = &cobra.Command{
	Use:   "Chat",
	Short: "Chat to get all the commands",
}

func init() {
	ChatCmd.AddCommand(topic.AdminFilterChatMessageCmd)
	ChatCmd.AddCommand(topic.AdminChatHistoryCmd)
	ChatCmd.AddCommand(topic.AdminCreateNamespaceTopicCmd)
	ChatCmd.AddCommand(topic.AdminTopicListCmd)
	ChatCmd.AddCommand(topic.AdminCreateTopicCmd)
	ChatCmd.AddCommand(topic.AdminChannelTopicListCmd)
	ChatCmd.AddCommand(topic.AdminChannelTopicSummaryCmd)
	ChatCmd.AddCommand(topic.AdminQueryTopicLogCmd)
	ChatCmd.AddCommand(topic.AdminUpdateTopicCmd)
	ChatCmd.AddCommand(topic.AdminDeleteTopicCmd)
	ChatCmd.AddCommand(topic.AdminBanTopicMembersCmd)
	ChatCmd.AddCommand(topic.AdminChannelTopicInfoCmd)
	ChatCmd.AddCommand(topic.AdminTopicChatHistoryCmd)
	ChatCmd.AddCommand(topic.AdminSendChatCmd)
	ChatCmd.AddCommand(topic.AdminDeleteChatCmd)
	ChatCmd.AddCommand(topic.AdminTopicMembersCmd)
	ChatCmd.AddCommand(topic.AdminTopicShardsCmd)
	ChatCmd.AddCommand(topic.AdminUnbanTopicMembersCmd)
	ChatCmd.AddCommand(topic.AdminAddTopicMemberCmd)
	ChatCmd.AddCommand(topic.AdminRemoveTopicMemberCmd)
	ChatCmd.AddCommand(topic.AdminQueryTopicCmd)
	ChatCmd.AddCommand(topic.AdminQueryUsersTopicCmd)
	ChatCmd.AddCommand(topic.PublicGetMutedTopicsCmd)
	ChatCmd.AddCommand(topic.PublicTopicListCmd)
	ChatCmd.AddCommand(topic.PublicBanTopicMembersCmd)
	ChatCmd.AddCommand(topic.PublicChatHistoryCmd)
	ChatCmd.AddCommand(topic.PublicDeleteChatCmd)
	ChatCmd.AddCommand(topic.PublicMuteUserCmd)
	ChatCmd.AddCommand(topic.PublicUnbanTopicMembersCmd)
	ChatCmd.AddCommand(topic.PublicUnmuteUserCmd)
	ChatCmd.AddCommand(config.AdminGetAllConfigV1Cmd)
	ChatCmd.AddCommand(config.AdminGetConfigV1Cmd)
	ChatCmd.AddCommand(config.AdminUpdateConfigV1Cmd)
	ChatCmd.AddCommand(config.ExportConfigCmd)
	ChatCmd.AddCommand(config.ImportConfigCmd)
	ChatCmd.AddCommand(inbox.AdminGetInboxCategoriesCmd)
	ChatCmd.AddCommand(inbox.AdminAddInboxCategoryCmd)
	ChatCmd.AddCommand(inbox.AdminDeleteInboxCategoryCmd)
	ChatCmd.AddCommand(inbox.AdminUpdateInboxCategoryCmd)
	ChatCmd.AddCommand(inbox.AdminGetCategorySchemaCmd)
	ChatCmd.AddCommand(inbox.AdminDeleteInboxMessageCmd)
	ChatCmd.AddCommand(inbox.AdminGetInboxMessagesCmd)
	ChatCmd.AddCommand(inbox.AdminSaveInboxMessageCmd)
	ChatCmd.AddCommand(inbox.AdminUnsendInboxMessageCmd)
	ChatCmd.AddCommand(inbox.AdminGetInboxUsersCmd)
	ChatCmd.AddCommand(inbox.AdminUpdateInboxMessageCmd)
	ChatCmd.AddCommand(inbox.AdminSendInboxMessageCmd)
	ChatCmd.AddCommand(inbox.AdminGetInboxStatsCmd)
	ChatCmd.AddCommand(moderation.AdminGetChatSnapshotCmd)
	ChatCmd.AddCommand(moderation.AdminDeleteChatSnapshotCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityQueryCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityCreateCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityCreateBulkCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityExportCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityGroupCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityImportCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityUpdateCmd)
	ChatCmd.AddCommand(profanity.AdminProfanityDeleteCmd)
	ChatCmd.AddCommand(operations.PublicGetMessagesCmd)
	ChatCmd.AddCommand(config.PublicGetConfigV1Cmd)
	ChatCmd.AddCommand(moderation.PublicGetChatSnapshotCmd)
}
