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
		errOK := matchmakingService.AddUserIntoSessionInChannelShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AddUserIntoSessionInChannelCmd.Flags().String("body", "", "Body")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("body")
	AddUserIntoSessionInChannelCmd.Flags().String("channelName", "", "Channel name")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("channelName")
	AddUserIntoSessionInChannelCmd.Flags().String("matchID", "", "Match ID")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("matchID")
	AddUserIntoSessionInChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = AddUserIntoSessionInChannelCmd.MarkFlagRequired("namespace")
}
