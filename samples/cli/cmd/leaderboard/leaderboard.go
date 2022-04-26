// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/sample-apps/cmd/leaderboard/leaderboardConfiguration"
	"github.com/AccelByte/sample-apps/cmd/leaderboard/leaderboardData"
	"github.com/AccelByte/sample-apps/cmd/leaderboard/userData"
	"github.com/AccelByte/sample-apps/cmd/leaderboard/userVisibility"
	"github.com/spf13/cobra"
)

// LeaderboardCmd represents the service's child command
var LeaderboardCmd = &cobra.Command{
	Use:   "Leaderboard",
	Short: "Leaderboard to get all the commands",
}

func init() {
	LeaderboardCmd.AddCommand(leaderboardConfiguration.GetLeaderboardConfigurationsAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.CreateLeaderboardConfigurationAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.AdminGetArchivedLeaderboardRankingDataV1HandlerCmd)
	LeaderboardCmd.AddCommand(leaderboardData.CreateArchivedLeaderboardRankingDataV1HandlerCmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.DeleteBulkLeaderboardConfigurationAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.GetLeaderboardConfigurationAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.UpdateLeaderboardConfigurationAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.DeleteLeaderboardConfigurationAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetAllTimeLeaderboardRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentMonthLeaderboardRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentSeasonLeaderboardRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetTodayLeaderboardRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetUserRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.UpdateUserPointAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.DeleteUserRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentWeekLeaderboardRankingAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.DeleteUserRankingsAdminV1Cmd)
	LeaderboardCmd.AddCommand(userData.GetUserLeaderboardRankingsAdminV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.GetLeaderboardConfigurationsPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.CreateLeaderboardConfigurationPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetAllTimeLeaderboardRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetArchivedLeaderboardRankingDataV1HandlerCmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentMonthLeaderboardRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentSeasonLeaderboardRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetTodayLeaderboardRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetUserRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.DeleteUserRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetCurrentWeekLeaderboardRankingPublicV1Cmd)
	LeaderboardCmd.AddCommand(userVisibility.GetHiddenUsersV2Cmd)
	LeaderboardCmd.AddCommand(userVisibility.GetUserVisibilityStatusV2Cmd)
	LeaderboardCmd.AddCommand(userVisibility.SetUserLeaderboardVisibilityStatusV2Cmd)
	LeaderboardCmd.AddCommand(userVisibility.SetUserVisibilityStatusV2Cmd)
	LeaderboardCmd.AddCommand(leaderboardConfiguration.GetLeaderboardConfigurationsPublicV2Cmd)
	LeaderboardCmd.AddCommand(leaderboardData.GetAllTimeLeaderboardRankingPublicV2Cmd)
}
