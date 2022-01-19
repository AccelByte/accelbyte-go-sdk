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

// getAllSessionsInChannelCmd represents the getAllSessionsInChannel command
var getAllSessionsInChannelCmd = &cobra.Command{
	Use:   "getAllSessionsInChannel",
	Short: "Get all sessions in channel",
	Long:  `Get all sessions in channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.GetAllSessionsInChannelParams{
			ChannelName: channelName,
			Namespace:   namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.GetAllSessionsInChannel(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getAllSessionsInChannelCmd)
	getAllSessionsInChannelCmd.Flags().StringP("channelName", "c", " ", "Channel name")
	_ = getAllSessionsInChannelCmd.MarkFlagRequired("channelName")
	getAllSessionsInChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getAllSessionsInChannelCmd.MarkFlagRequired("namespace")
}
