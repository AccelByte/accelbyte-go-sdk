// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"github.com/AccelByte/sample-apps/cmd/matchmaking/matchmaking"
	"github.com/AccelByte/sample-apps/cmd/matchmaking/matchmakingOperations"
	"github.com/AccelByte/sample-apps/cmd/matchmaking/socialMatchmaking"
	"github.com/spf13/cobra"
)

// MatchmakingCmd represents the service's child command
var MatchmakingCmd = &cobra.Command{
	Use:   "Matchmaking",
	Short: "Matchmaking to get all the commands",
}

func init() {
	MatchmakingCmd.AddCommand(matchmakingOperations.GetHealthcheckInfoCmd)
	MatchmakingCmd.AddCommand(matchmakingOperations.HandlerV3HealthzCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetAllChannelsHandlerCmd)
	MatchmakingCmd.AddCommand(matchmaking.CreateChannelHandlerCmd)
	MatchmakingCmd.AddCommand(matchmaking.DeleteChannelHandlerCmd)
	MatchmakingCmd.AddCommand(matchmaking.StoreMatchResultsCmd)
	MatchmakingCmd.AddCommand(matchmaking.QueueSessionHandlerCmd)
	MatchmakingCmd.AddCommand(matchmaking.DequeueSessionHandlerCmd)
	MatchmakingCmd.AddCommand(matchmaking.QuerySessionHandlerCmd)
	MatchmakingCmd.AddCommand(socialMatchmaking.UpdatePlayTimeWeightCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetAllPartyInAllChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.BulkGetSessionsCmd)
	MatchmakingCmd.AddCommand(matchmaking.ExportChannelsCmd)
	MatchmakingCmd.AddCommand(matchmaking.ImportChannelsCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetSingleMatchmakingChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.UpdateMatchmakingChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetAllPartyInChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetAllSessionsInChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.AddUserIntoSessionInChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.DeleteSessionInChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.DeleteUserFromSessionInChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.SearchSessionsCmd)
	MatchmakingCmd.AddCommand(matchmaking.GetSessionHistoryDetailedCmd)
	MatchmakingCmd.AddCommand(matchmakingOperations.PublicGetMessagesCmd)
	MatchmakingCmd.AddCommand(matchmaking.PublicGetAllMatchmakingChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.PublicGetSingleMatchmakingChannelCmd)
	MatchmakingCmd.AddCommand(matchmaking.SearchSessionsV2Cmd)
	MatchmakingCmd.AddCommand(matchmakingOperations.VersionCheckHandlerCmd)
}
