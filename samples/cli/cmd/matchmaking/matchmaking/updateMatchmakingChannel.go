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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateMatchmakingChannelCmd represents the updateMatchmakingChannel command
var updateMatchmakingChannelCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(updateMatchmakingChannelCmd)
	updateMatchmakingChannelCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateMatchmakingChannelCmd.MarkFlagRequired("body")
	updateMatchmakingChannelCmd.Flags().StringP("channelName", "ce", " ", "Channel name")
	_ = updateMatchmakingChannelCmd.MarkFlagRequired("channelName")
	updateMatchmakingChannelCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateMatchmakingChannelCmd.MarkFlagRequired("namespace")
}
