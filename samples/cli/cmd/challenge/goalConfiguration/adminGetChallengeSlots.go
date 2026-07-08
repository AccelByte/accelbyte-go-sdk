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

// AdminGetChallengeSlotsCmd represents the AdminGetChallengeSlots command
var AdminGetChallengeSlotsCmd = &cobra.Command{
	Use:   "adminGetChallengeSlots",
	Short: "Admin get challenge slots",
	Long:  `Admin get challenge slots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminGetChallengeSlotsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := goalConfigurationService.AdminGetChallengeSlotsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetChallengeSlotsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetChallengeSlotsCmd.MarkFlagRequired("challengeCode")
	AdminGetChallengeSlotsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChallengeSlotsCmd.MarkFlagRequired("namespace")
}
