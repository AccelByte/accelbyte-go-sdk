// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateChallengeCmd represents the AdminUpdateChallenge command
var AdminUpdateChallengeCmd = &cobra.Command{
	Use:   "adminUpdateChallenge",
	Short: "Admin update challenge",
	Long:  `Admin update challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelUpdateChallengeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminUpdateChallengeParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := challengeConfigurationService.AdminUpdateChallengeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateChallengeCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateChallengeCmd.MarkFlagRequired("body")
	AdminUpdateChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminUpdateChallengeCmd.MarkFlagRequired("challengeCode")
	AdminUpdateChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateChallengeCmd.MarkFlagRequired("namespace")
}
