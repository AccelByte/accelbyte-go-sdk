// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetChallengeCmd represents the AdminGetChallenge command
var AdminGetChallengeCmd = &cobra.Command{
	Use:   "adminGetChallenge",
	Short: "Admin get challenge",
	Long:  `Admin get challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminGetChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := challengeConfigurationService.AdminGetChallengeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetChallengeCmd.MarkFlagRequired("challengeCode")
	AdminGetChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChallengeCmd.MarkFlagRequired("namespace")
}
