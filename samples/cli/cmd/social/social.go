// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/sample-apps/cmd/social/gameProfile"
	"github.com/AccelByte/sample-apps/cmd/social/globalStatistic"
	"github.com/AccelByte/sample-apps/cmd/social/slot"
	"github.com/AccelByte/sample-apps/cmd/social/slotConfig"
	"github.com/AccelByte/sample-apps/cmd/social/statConfiguration"
	"github.com/AccelByte/sample-apps/cmd/social/userStatistic"
	"github.com/spf13/cobra"
)

// SocialCmd represents the service's child command
var SocialCmd = &cobra.Command{
	Use:   "Social",
	Short: "Social to get all the commands",
}

func init() {
	SocialCmd.AddCommand(slotConfig.GetNamespaceSlotConfigCmd)
	SocialCmd.AddCommand(slotConfig.UpdateNamespaceSlotConfigCmd)
	SocialCmd.AddCommand(slotConfig.DeleteNamespaceSlotConfigCmd)
	SocialCmd.AddCommand(slotConfig.GetUserSlotConfigCmd)
	SocialCmd.AddCommand(slotConfig.UpdateUserSlotConfigCmd)
	SocialCmd.AddCommand(slotConfig.DeleteUserSlotConfigCmd)
	SocialCmd.AddCommand(gameProfile.GetUserProfilesCmd)
	SocialCmd.AddCommand(gameProfile.GetProfileCmd)
	SocialCmd.AddCommand(slot.GetUserNamespaceSlotsCmd)
	SocialCmd.AddCommand(slot.GetSlotDataCmd)
	SocialCmd.AddCommand(gameProfile.PublicGetUserGameProfilesCmd)
	SocialCmd.AddCommand(gameProfile.PublicGetUserProfilesCmd)
	SocialCmd.AddCommand(gameProfile.PublicCreateProfileCmd)
	SocialCmd.AddCommand(gameProfile.PublicGetProfileCmd)
	SocialCmd.AddCommand(gameProfile.PublicUpdateProfileCmd)
	SocialCmd.AddCommand(gameProfile.PublicDeleteProfileCmd)
	SocialCmd.AddCommand(gameProfile.PublicGetProfileAttributeCmd)
	SocialCmd.AddCommand(gameProfile.PublicUpdateAttributeCmd)
	SocialCmd.AddCommand(slot.PublicGetUserNamespaceSlotsCmd)
	SocialCmd.AddCommand(slot.PublicCreateUserNamespaceSlotCmd)
	SocialCmd.AddCommand(slot.PublicGetSlotDataCmd)
	SocialCmd.AddCommand(slot.PublicUpdateUserNamespaceSlotCmd)
	SocialCmd.AddCommand(slot.PublicDeleteUserNamespaceSlotCmd)
	SocialCmd.AddCommand(slot.PublicUpdateUserNamespaceSlotMetadataCmd)
	SocialCmd.AddCommand(globalStatistic.GetGlobalStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.BulkFetchStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.BulkIncUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.BulkIncUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.BulkResetUserStatItemCmd)
	SocialCmd.AddCommand(statConfiguration.GetStatsCmd)
	SocialCmd.AddCommand(statConfiguration.CreateStatCmd)
	SocialCmd.AddCommand(statConfiguration.ExportStatsCmd)
	SocialCmd.AddCommand(statConfiguration.ImportStatsCmd)
	SocialCmd.AddCommand(statConfiguration.QueryStatsCmd)
	SocialCmd.AddCommand(statConfiguration.GetStatCmd)
	SocialCmd.AddCommand(statConfiguration.DeleteStatCmd)
	SocialCmd.AddCommand(statConfiguration.UpdateStatCmd)
	SocialCmd.AddCommand(userStatistic.GetUserStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.BulkCreateUserStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.BulkIncUserStatItem1Cmd)
	SocialCmd.AddCommand(userStatistic.BulkIncUserStatItemValue1Cmd)
	SocialCmd.AddCommand(userStatistic.BulkResetUserStatItem1Cmd)
	SocialCmd.AddCommand(userStatistic.CreateUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.DeleteUserStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.IncUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.ResetUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.BulkFetchStatItems1Cmd)
	SocialCmd.AddCommand(userStatistic.PublicBulkIncUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.PublicBulkIncUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.BulkResetUserStatItem2Cmd)
	SocialCmd.AddCommand(statConfiguration.CreateStat1Cmd)
	SocialCmd.AddCommand(userStatistic.PublicQueryUserStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.PublicBulkCreateUserStatItemsCmd)
	SocialCmd.AddCommand(userStatistic.PublicBulkIncUserStatItem1Cmd)
	SocialCmd.AddCommand(userStatistic.BulkIncUserStatItemValue2Cmd)
	SocialCmd.AddCommand(userStatistic.BulkResetUserStatItem3Cmd)
	SocialCmd.AddCommand(userStatistic.PublicCreateUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.DeleteUserStatItems1Cmd)
	SocialCmd.AddCommand(userStatistic.PublicIncUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.PublicIncUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.ResetUserStatItemValue1Cmd)
	SocialCmd.AddCommand(userStatistic.BulkUpdateUserStatItemV2Cmd)
	SocialCmd.AddCommand(userStatistic.BulkUpdateUserStatItemCmd)
	SocialCmd.AddCommand(userStatistic.BulkResetUserStatItemValuesCmd)
	SocialCmd.AddCommand(userStatistic.DeleteUserStatItems2Cmd)
	SocialCmd.AddCommand(userStatistic.UpdateUserStatItemValueCmd)
	SocialCmd.AddCommand(userStatistic.BulkUpdateUserStatItem1Cmd)
	SocialCmd.AddCommand(userStatistic.BulkUpdateUserStatItem2Cmd)
	SocialCmd.AddCommand(userStatistic.UpdateUserStatItemValue1Cmd)
}
