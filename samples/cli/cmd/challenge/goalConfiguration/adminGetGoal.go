// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package goalConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGoalCmd represents the AdminGetGoal command
var AdminGetGoalCmd = &cobra.Command{
	Use:   "adminGetGoal",
	Short: "Admin get goal",
	Long:  `Admin get goal`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminGetGoalParams{
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
		}
		ok, errOK := goalConfigurationService.AdminGetGoalShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetGoalCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetGoalCmd.MarkFlagRequired("challengeCode")
	AdminGetGoalCmd.Flags().String("code", "", "Code")
	_ = AdminGetGoalCmd.MarkFlagRequired("code")
	AdminGetGoalCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGoalCmd.MarkFlagRequired("namespace")
}
