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

// AdminDeleteChallengeCmd represents the AdminDeleteChallenge command
var AdminDeleteChallengeCmd = &cobra.Command{
	Use:   "adminDeleteChallenge",
	Short: "Admin delete challenge",
	Long:  `Admin delete challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminDeleteChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		errNoContent := challengeConfigurationService.AdminDeleteChallengeShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminDeleteChallengeCmd.MarkFlagRequired("challengeCode")
	AdminDeleteChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteChallengeCmd.MarkFlagRequired("namespace")
}
