// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"encoding/json"
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAllPartyInChannelCmd represents the GetAllPartyInChannel command
var GetAllPartyInChannelCmd = &cobra.Command{
	Use:   "getAllPartyInChannel",
	Short: "Get all party in channel",
	Long:  `Get all party in channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.GetAllPartyInChannelParams{
			ChannelName: channelName,
			Namespace:   namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.GetAllPartyInChannel(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetAllPartyInChannelCmd.Flags().StringP("channelName", "", "", "Channel name")
	_ = GetAllPartyInChannelCmd.MarkFlagRequired("channelName")
	GetAllPartyInChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetAllPartyInChannelCmd.MarkFlagRequired("namespace")
}
