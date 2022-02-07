// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := matchmakingService.UpdateMatchmakingChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	UpdateMatchmakingChannelCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("body")
	UpdateMatchmakingChannelCmd.Flags().StringP("channelName", "", "", "Channel name")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("channelName")
	UpdateMatchmakingChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateMatchmakingChannelCmd.MarkFlagRequired("namespace")
}
