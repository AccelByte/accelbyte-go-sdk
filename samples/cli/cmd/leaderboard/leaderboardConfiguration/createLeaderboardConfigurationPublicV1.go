// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package leaderboardConfiguration

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateLeaderboardConfigurationPublicV1Cmd represents the CreateLeaderboardConfigurationPublicV1 command
var CreateLeaderboardConfigurationPublicV1Cmd = &cobra.Command{
	Use:   "createLeaderboardConfigurationPublicV1",
	Short: "Create leaderboard configuration public V1",
	Long:  `Create leaderboard configuration public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationService := &leaderboard.LeaderboardConfigurationService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsLeaderboardConfigReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration.CreateLeaderboardConfigurationPublicV1Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := leaderboardConfigurationService.CreateLeaderboardConfigurationPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CreateLeaderboardConfigurationPublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = CreateLeaderboardConfigurationPublicV1Cmd.MarkFlagRequired("body")
	CreateLeaderboardConfigurationPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateLeaderboardConfigurationPublicV1Cmd.MarkFlagRequired("namespace")
}
