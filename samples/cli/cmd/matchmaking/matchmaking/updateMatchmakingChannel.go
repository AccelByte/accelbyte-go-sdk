// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"encoding/json"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateMatchmakingChannelCmd represents the UpdateMatchmakingChannel command
var UpdateMatchmakingChannelCmd = &cobra.Command{
	Use:   "updateMatchmakingChannel",
	Short: "Update matchmaking channel",
	Long:  `Update matchmaking channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsUpdateChannelRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.UpdateMatchmakingChannelParams{
			Body:        body,
			ChannelName: channelName,
			Namespace:   namespace,
		}
		errNoContent := matchmakingService.UpdateMatchmakingChannelShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateMatchmakingChannelCmd.Flags().String("body", "", "Body")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("body")
	UpdateMatchmakingChannelCmd.Flags().String("channelName", "", "Channel name")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("channelName")
	UpdateMatchmakingChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("namespace")
}
