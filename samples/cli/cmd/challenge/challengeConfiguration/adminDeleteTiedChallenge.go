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

// AdminDeleteTiedChallengeCmd represents the AdminDeleteTiedChallenge command
var AdminDeleteTiedChallengeCmd = &cobra.Command{
	Use:   "adminDeleteTiedChallenge",
	Short: "Admin delete tied challenge",
	Long:  `Admin delete tied challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminDeleteTiedChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		errNoContent := challengeConfigurationService.AdminDeleteTiedChallengeShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTiedChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminDeleteTiedChallengeCmd.MarkFlagRequired("challengeCode")
	AdminDeleteTiedChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTiedChallengeCmd.MarkFlagRequired("namespace")
}
