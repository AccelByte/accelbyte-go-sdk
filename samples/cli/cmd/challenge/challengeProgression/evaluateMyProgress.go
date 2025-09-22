// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeProgression

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_progression"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// EvaluateMyProgressCmd represents the EvaluateMyProgress command
var EvaluateMyProgressCmd = &cobra.Command{
	Use:   "evaluateMyProgress",
	Short: "Evaluate my progress",
	Long:  `Evaluate my progress`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		challengeCodeString := cmd.Flag("challengeCode").Value.String()
		var challengeCode []string
		errChallengeCode := json.Unmarshal([]byte(challengeCodeString), &challengeCode)
		if errChallengeCode != nil {
			return errChallengeCode
		}
		input := &challenge_progression.EvaluateMyProgressParams{
			Namespace:     namespace,
			ChallengeCode: challengeCode,
		}
		errNoContent := challengeProgressionService.EvaluateMyProgressShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	EvaluateMyProgressCmd.Flags().String("namespace", "", "Namespace")
	_ = EvaluateMyProgressCmd.MarkFlagRequired("namespace")
	EvaluateMyProgressCmd.Flags().String("challengeCode", "", "Challenge code")
}
