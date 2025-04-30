// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userAchievements

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/user_achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBulkUnlockAchievementCmd represents the AdminBulkUnlockAchievement command
var AdminBulkUnlockAchievementCmd = &cobra.Command{
	Use:   "adminBulkUnlockAchievement",
	Short: "Admin bulk unlock achievement",
	Long:  `Admin bulk unlock achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsBulkUnlockAchievementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.AdminBulkUnlockAchievementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userAchievementsService.AdminBulkUnlockAchievementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkUnlockAchievementCmd.Flags().String("body", "", "Body")
	_ = AdminBulkUnlockAchievementCmd.MarkFlagRequired("body")
	AdminBulkUnlockAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkUnlockAchievementCmd.MarkFlagRequired("namespace")
	AdminBulkUnlockAchievementCmd.Flags().String("userId", "", "User id")
	_ = AdminBulkUnlockAchievementCmd.MarkFlagRequired("userId")
}
