// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package seasonpass

import (
	"github.com/AccelByte/sample-apps/cmd/seasonpass/pass"
	"github.com/AccelByte/sample-apps/cmd/seasonpass/reward"
	"github.com/AccelByte/sample-apps/cmd/seasonpass/season"
	"github.com/AccelByte/sample-apps/cmd/seasonpass/tier"
	"github.com/spf13/cobra"
)

// SeasonpassCmd represents the service's child command
var SeasonpassCmd = &cobra.Command{
	Use:   "Seasonpass",
	Short: "Seasonpass to get all the commands",
}

func init() {
	SeasonpassCmd.AddCommand(season.QuerySeasonsCmd)
	SeasonpassCmd.AddCommand(season.CreateSeasonCmd)
	SeasonpassCmd.AddCommand(season.GetCurrentSeasonCmd)
	SeasonpassCmd.AddCommand(season.GetSeasonCmd)
	SeasonpassCmd.AddCommand(season.DeleteSeasonCmd)
	SeasonpassCmd.AddCommand(season.UpdateSeasonCmd)
	SeasonpassCmd.AddCommand(season.CloneSeasonCmd)
	SeasonpassCmd.AddCommand(pass.QueryPassesCmd)
	SeasonpassCmd.AddCommand(pass.CreatePassCmd)
	SeasonpassCmd.AddCommand(pass.GetPassCmd)
	SeasonpassCmd.AddCommand(pass.DeletePassCmd)
	SeasonpassCmd.AddCommand(pass.UpdatePassCmd)
	SeasonpassCmd.AddCommand(season.PublishSeasonCmd)
	SeasonpassCmd.AddCommand(season.RetireSeasonCmd)
	SeasonpassCmd.AddCommand(reward.QueryRewardsCmd)
	SeasonpassCmd.AddCommand(reward.CreateRewardCmd)
	SeasonpassCmd.AddCommand(reward.GetRewardCmd)
	SeasonpassCmd.AddCommand(reward.DeleteRewardCmd)
	SeasonpassCmd.AddCommand(reward.UpdateRewardCmd)
	SeasonpassCmd.AddCommand(tier.QueryTiersCmd)
	SeasonpassCmd.AddCommand(tier.CreateTierCmd)
	SeasonpassCmd.AddCommand(tier.UpdateTierCmd)
	SeasonpassCmd.AddCommand(tier.DeleteTierCmd)
	SeasonpassCmd.AddCommand(tier.ReorderTierCmd)
	SeasonpassCmd.AddCommand(season.UnpublishSeasonCmd)
	SeasonpassCmd.AddCommand(season.GetUserParticipatedSeasonsCmd)
	SeasonpassCmd.AddCommand(tier.GrantUserExpCmd)
	SeasonpassCmd.AddCommand(pass.GrantUserPassCmd)
	SeasonpassCmd.AddCommand(season.ExistsAnyPassByPassCodesCmd)
	SeasonpassCmd.AddCommand(season.GetCurrentUserSeasonProgressionCmd)
	SeasonpassCmd.AddCommand(season.CheckSeasonPurchasableCmd)
	SeasonpassCmd.AddCommand(season.ResetUserSeasonCmd)
	SeasonpassCmd.AddCommand(tier.GrantUserTierCmd)
	SeasonpassCmd.AddCommand(season.GetUserSeasonCmd)
	SeasonpassCmd.AddCommand(season.PublicGetCurrentSeasonCmd)
	SeasonpassCmd.AddCommand(season.PublicGetCurrentUserSeasonCmd)
	SeasonpassCmd.AddCommand(reward.PublicClaimUserRewardCmd)
	SeasonpassCmd.AddCommand(reward.PublicBulkClaimUserRewardsCmd)
	SeasonpassCmd.AddCommand(season.PublicGetUserSeasonCmd)
}
