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

// UpdateLeaderboardConfigurationAdminV3Cmd represents the UpdateLeaderboardConfigurationAdminV3 command
var UpdateLeaderboardConfigurationAdminV3Cmd = &cobra.Command{
	Use:   "updateLeaderboardConfigurationAdminV3",
	Short: "Update leaderboard configuration admin V3",
	Long:  `Update leaderboard configuration admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReqV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration_v3.UpdateLeaderboardConfigurationAdminV3Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
		}
		ok, errOK := leaderboardConfigurationV3Service.UpdateLeaderboardConfigurationAdminV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateLeaderboardConfigurationAdminV3Cmd.Flags().String("body", "", "Body")
	_ = UpdateLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("body")
	UpdateLeaderboardConfigurationAdminV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = UpdateLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("leaderboardCode")
	UpdateLeaderboardConfigurationAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("namespace")
}
