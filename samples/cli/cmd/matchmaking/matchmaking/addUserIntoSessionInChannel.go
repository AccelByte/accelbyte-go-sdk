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

// AddUserIntoSessionInChannelCmd represents the AddUserIntoSessionInChannel command
var AddUserIntoSessionInChannelCmd = &cobra.Command{
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
	AddUserIntoSessionInChannelCmd.Flags().StringP("body", "", " ", "Body")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("body")
	AddUserIntoSessionInChannelCmd.Flags().StringP("channelName", "", " ", "Channel name")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("channelName")
	AddUserIntoSessionInChannelCmd.Flags().StringP("matchID", "", " ", "Match ID")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("matchID")
	AddUserIntoSessionInChannelCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("namespace")
}
