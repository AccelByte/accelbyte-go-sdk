// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeProgression

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_progression"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminEvaluateProgressCmd represents the AdminEvaluateProgress command
var AdminEvaluateProgressCmd = &cobra.Command{
	Use:   "adminEvaluateProgress",
	Short: "Admin evaluate progress",
	Long:  `Admin evaluate progress`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelEvaluatePlayerProgressionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_progression.AdminEvaluateProgressParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := challengeProgressionService.AdminEvaluateProgressShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminEvaluateProgressCmd.Flags().String("body", "", "Body")
	_ = AdminEvaluateProgressCmd.MarkFlagRequired("body")
	AdminEvaluateProgressCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminEvaluateProgressCmd.MarkFlagRequired("namespace")
}
