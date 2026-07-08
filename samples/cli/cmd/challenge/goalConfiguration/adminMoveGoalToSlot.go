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

// AdminMoveGoalToSlotCmd represents the AdminMoveGoalToSlot command
var AdminMoveGoalToSlotCmd = &cobra.Command{
	Use:   "adminMoveGoalToSlot",
	Short: "Admin move goal to slot",
	Long:  `Admin move goal to slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelMoveGoalToSlotRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminMoveGoalToSlotParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Code:          code,
			Namespace:     namespace,
		}
		errNoContent := goalConfigurationService.AdminMoveGoalToSlotShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminMoveGoalToSlotCmd.Flags().String("body", "", "Body")
	_ = AdminMoveGoalToSlotCmd.MarkFlagRequired("body")
	AdminMoveGoalToSlotCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminMoveGoalToSlotCmd.MarkFlagRequired("challengeCode")
	AdminMoveGoalToSlotCmd.Flags().String("code", "", "Code")
	_ = AdminMoveGoalToSlotCmd.MarkFlagRequired("code")
	AdminMoveGoalToSlotCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminMoveGoalToSlotCmd.MarkFlagRequired("namespace")
}
