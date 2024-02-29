// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeProgression

import (
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_progression"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserProgressionCmd represents the PublicGetUserProgression command
var PublicGetUserProgressionCmd = &cobra.Command{
	Use:   "publicGetUserProgression",
	Short: "Public get user progression",
	Long:  `Public get user progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		goalCode, _ := cmd.Flags().GetString("goalCode")
		input := &challenge_progression.PublicGetUserProgressionParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			GoalCode:      &goalCode,
		}
		ok, errOK := challengeProgressionService.PublicGetUserProgressionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserProgressionCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicGetUserProgressionCmd.MarkFlagRequired("challengeCode")
	PublicGetUserProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProgressionCmd.MarkFlagRequired("namespace")
	PublicGetUserProgressionCmd.Flags().String("goalCode", "", "Goal code")
}
