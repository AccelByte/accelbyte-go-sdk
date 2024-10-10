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

// AdminGetActiveChallengesCmd represents the AdminGetActiveChallenges command
var AdminGetActiveChallengesCmd = &cobra.Command{
	Use:   "adminGetActiveChallenges",
	Short: "Admin get active challenges",
	Long:  `Admin get active challenges`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &challenge_configuration.AdminGetActiveChallengesParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := challengeConfigurationService.AdminGetActiveChallengesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetActiveChallengesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetActiveChallengesCmd.MarkFlagRequired("namespace")
	AdminGetActiveChallengesCmd.Flags().String("userId", "", "User id")
	_ = AdminGetActiveChallengesCmd.MarkFlagRequired("userId")
	AdminGetActiveChallengesCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetActiveChallengesCmd.Flags().Int64("offset", 0, "Offset")
}
