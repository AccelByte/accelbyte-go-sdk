// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminAnonymizeUserAchievementCmd represents the AdminAnonymizeUserAchievement command
var AdminAnonymizeUserAchievementCmd = &cobra.Command{
	Use:   "adminAnonymizeUserAchievement",
	Short: "Admin anonymize user achievement",
	Long:  `Admin anonymize user achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &achievement.AnonymizationService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminAnonymizeUserAchievementParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminAnonymizeUserAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAnonymizeUserAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAnonymizeUserAchievementCmd.MarkFlagRequired("namespace")
	AdminAnonymizeUserAchievementCmd.Flags().String("userId", "", "User id")
	_ = AdminAnonymizeUserAchievementCmd.MarkFlagRequired("userId")
}
