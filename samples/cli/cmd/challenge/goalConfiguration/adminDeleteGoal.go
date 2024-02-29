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

// AdminDeleteGoalCmd represents the AdminDeleteGoal command
var AdminDeleteGoalCmd = &cobra.Command{
	Use:   "adminDeleteGoal",
	Short: "Admin delete goal",
	Long:  `Admin delete goal`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminDeleteGoalParams{
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
		}
		errNoContent := goalConfigurationService.AdminDeleteGoalShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteGoalCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminDeleteGoalCmd.MarkFlagRequired("challengeCode")
	AdminDeleteGoalCmd.Flags().String("code", "", "Code")
	_ = AdminDeleteGoalCmd.MarkFlagRequired("code")
	AdminDeleteGoalCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteGoalCmd.MarkFlagRequired("namespace")
}
