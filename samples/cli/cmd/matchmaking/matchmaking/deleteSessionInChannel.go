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

// DeleteSessionInChannelCmd represents the DeleteSessionInChannel command
var DeleteSessionInChannelCmd = &cobra.Command{
	Use:   "deleteSessionInChannel",
	Short: "Delete session in channel",
	Long:  `Delete session in channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.DeleteSessionInChannelParams{
			ChannelName: channelName,
			MatchID:     matchID,
			Namespace:   namespace,
		}
		errInput := matchmakingService.DeleteSessionInChannelShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteSessionInChannelCmd.Flags().StringP("channelName", "", "", "Channel name")
	_ = DeleteSessionInChannelCmd.MarkFlagRequired("channelName")
	DeleteSessionInChannelCmd.Flags().StringP("matchID", "", "", "Match ID")
	_ = DeleteSessionInChannelCmd.MarkFlagRequired("matchID")
	DeleteSessionInChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteSessionInChannelCmd.MarkFlagRequired("namespace")
}
