// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package goalConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateGoalsCmd represents the AdminUpdateGoals command
var AdminUpdateGoalsCmd = &cobra.Command{
	Use:   "adminUpdateGoals",
	Short: "Admin update goals",
	Long:  `Admin update goals`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelUpdateGoalRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminUpdateGoalsParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
		}
		ok, errOK := goalConfigurationService.AdminUpdateGoalsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateGoalsCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateGoalsCmd.MarkFlagRequired("body")
	AdminUpdateGoalsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminUpdateGoalsCmd.MarkFlagRequired("challengeCode")
	AdminUpdateGoalsCmd.Flags().String("code", "", "Code")
	_ = AdminUpdateGoalsCmd.MarkFlagRequired("code")
	AdminUpdateGoalsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateGoalsCmd.MarkFlagRequired("namespace")
}
