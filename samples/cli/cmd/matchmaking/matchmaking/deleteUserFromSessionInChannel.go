// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserFromSessionInChannelCmd represents the DeleteUserFromSessionInChannel command
var DeleteUserFromSessionInChannelCmd = &cobra.Command{
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
		errInput := matchmakingService.DeleteUserFromSessionInChannelShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteUserFromSessionInChannelCmd.Flags().StringP("channelName", "", "", "Channel name")
	_ = DeleteUserFromSessionInChannelCmd.MarkFlagRequired("channelName")
	DeleteUserFromSessionInChannelCmd.Flags().StringP("matchID", "", "", "Match ID")
	_ = DeleteUserFromSessionInChannelCmd.MarkFlagRequired("matchID")
	DeleteUserFromSessionInChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteUserFromSessionInChannelCmd.MarkFlagRequired("namespace")
	DeleteUserFromSessionInChannelCmd.Flags().StringP("userID", "", "", "User ID")
	_ = DeleteUserFromSessionInChannelCmd.MarkFlagRequired("userID")
}
