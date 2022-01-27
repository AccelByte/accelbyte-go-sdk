// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package socialMatchmaking

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/social_matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updatePlayTimeWeightCmd represents the updatePlayTimeWeight command
var updatePlayTimeWeightCmd = &cobra.Command{
	Use:   "updatePlayTimeWeight",
	Short: "Update play time weight",
	Long:  `Update play time weight`,
	RunE: func(cmd *cobra.Command, args []string) error {
		socialMatchmakingService := &matchmaking.SocialMatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsUpdatePlayTimeWeightRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &social_matchmaking.UpdatePlayTimeWeightParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := socialMatchmakingService.UpdatePlayTimeWeight(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePlayTimeWeightCmd)
	updatePlayTimeWeightCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updatePlayTimeWeightCmd.MarkFlagRequired("body")
	updatePlayTimeWeightCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updatePlayTimeWeightCmd.MarkFlagRequired("namespace")
}
