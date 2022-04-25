// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// CreateLeaderboardConfigurationAdminV1Cmd represents the CreateLeaderboardConfigurationAdminV1 command
var CreateLeaderboardConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "createLeaderboardConfigurationAdminV1",
	Short: "Create leaderboard configuration admin V1",
	Long:  `Create leaderboard configuration admin V1`,
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
		input := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1Short(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	CreateLeaderboardConfigurationAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = CreateLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("body")
	CreateLeaderboardConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateLeaderboardConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
