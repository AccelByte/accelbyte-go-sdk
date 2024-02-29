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

// AdminRandomizeChallengeCmd represents the AdminRandomizeChallenge command
var AdminRandomizeChallengeCmd = &cobra.Command{
	Use:   "adminRandomizeChallenge",
	Short: "Admin randomize challenge",
	Long:  `Admin randomize challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminRandomizeChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := challengeConfigurationService.AdminRandomizeChallengeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminRandomizeChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminRandomizeChallengeCmd.MarkFlagRequired("challengeCode")
	AdminRandomizeChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRandomizeChallengeCmd.MarkFlagRequired("namespace")
}
