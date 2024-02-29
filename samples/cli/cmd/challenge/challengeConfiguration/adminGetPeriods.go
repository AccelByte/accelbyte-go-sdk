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

// AdminGetPeriodsCmd represents the AdminGetPeriods command
var AdminGetPeriodsCmd = &cobra.Command{
	Use:   "adminGetPeriods",
	Short: "Admin get periods",
	Long:  `Admin get periods`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &challenge_configuration.AdminGetPeriodsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := challengeConfigurationService.AdminGetPeriodsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPeriodsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetPeriodsCmd.MarkFlagRequired("challengeCode")
	AdminGetPeriodsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPeriodsCmd.MarkFlagRequired("namespace")
	AdminGetPeriodsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetPeriodsCmd.Flags().Int64("offset", 0, "Offset")
}
