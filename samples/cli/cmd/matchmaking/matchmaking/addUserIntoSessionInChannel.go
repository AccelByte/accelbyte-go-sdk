// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// addUserIntoSessionInChannelCmd represents the addUserIntoSessionInChannel command
var addUserIntoSessionInChannelCmd = &cobra.Command{
	Use:   "addUserIntoSessionInChannel",
	Short: "Add user into session in channel",
	Long:  `Add user into session in channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsMatchAddUserIntoSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.AddUserIntoSessionInChannelParams{
			Body:        body,
			ChannelName: channelName,
			MatchID:     matchID,
			Namespace:   namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := matchmakingService.AddUserIntoSessionInChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(addUserIntoSessionInChannelCmd)
	addUserIntoSessionInChannelCmd.Flags().StringP("body", "b", " ", "Body")
	_ = addUserIntoSessionInChannelCmd.MarkFlagRequired("body")
	addUserIntoSessionInChannelCmd.Flags().StringP("channelName", "c", " ", "Channel name")
	_ = addUserIntoSessionInChannelCmd.MarkFlagRequired("channelName")
	addUserIntoSessionInChannelCmd.Flags().StringP("matchID", "m", " ", "Match ID")
	_ = addUserIntoSessionInChannelCmd.MarkFlagRequired("matchID")
	addUserIntoSessionInChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = addUserIntoSessionInChannelCmd.MarkFlagRequired("namespace")
}
