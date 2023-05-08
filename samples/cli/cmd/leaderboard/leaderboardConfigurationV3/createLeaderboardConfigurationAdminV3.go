// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfigurationV3

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration_v3"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateLeaderboardConfigurationAdminV3Cmd represents the CreateLeaderboardConfigurationAdminV3 command
var CreateLeaderboardConfigurationAdminV3Cmd = &cobra.Command{
	Use:   "createLeaderboardConfigurationAdminV3",
	Short: "Create leaderboard configuration admin V3",
	Long:  `Create leaderboard configuration admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsLeaderboardConfigReqV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration_v3.CreateLeaderboardConfigurationAdminV3Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := leaderboardConfigurationV3Service.CreateLeaderboardConfigurationAdminV3Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateLeaderboardConfigurationAdminV3Cmd.Flags().String("body", "", "Body")
	_ = CreateLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("body")
	CreateLeaderboardConfigurationAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("namespace")
}
