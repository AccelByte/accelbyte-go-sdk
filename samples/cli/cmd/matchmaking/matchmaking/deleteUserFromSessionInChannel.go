// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserFromSessionInChannelCmd represents the deleteUserFromSessionInChannel command
var deleteUserFromSessionInChannelCmd = &cobra.Command{
	Use:   "deleteUserFromSessionInChannel",
	Short: "Delete user from session in channel",
	Long:  `Delete user from session in channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		userID, _ := cmd.Flags().GetString("userID")
		input := &matchmaking_.DeleteUserFromSessionInChannelParams{
			ChannelName: channelName,
			MatchID:     matchID,
			Namespace:   namespace,
			UserID:      userID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := matchmakingService.DeleteUserFromSessionInChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteUserFromSessionInChannelCmd)
	deleteUserFromSessionInChannelCmd.Flags().StringP("channelName", "c", " ", "Channel name")
	_ = deleteUserFromSessionInChannelCmd.MarkFlagRequired("channelName")
	deleteUserFromSessionInChannelCmd.Flags().StringP("matchID", "m", " ", "Match ID")
	_ = deleteUserFromSessionInChannelCmd.MarkFlagRequired("matchID")
	deleteUserFromSessionInChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteUserFromSessionInChannelCmd.MarkFlagRequired("namespace")
	deleteUserFromSessionInChannelCmd.Flags().StringP("userID", "u", " ", "User ID")
	_ = deleteUserFromSessionInChannelCmd.MarkFlagRequired("userID")
}
