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

// AdminBatchQueryUserAchievementsCmd represents the AdminBatchQueryUserAchievements command
var AdminBatchQueryUserAchievementsCmd = &cobra.Command{
	Use:   "adminBatchQueryUserAchievements",
	Short: "Admin batch query user achievements",
	Long:  `Admin batch query user achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userAchievementsService := &achievement.UserAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsBatchQueryUserAchievementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_achievements.AdminBatchQueryUserAchievementsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userAchievementsService.AdminBatchQueryUserAchievementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBatchQueryUserAchievementsCmd.Flags().String("body", "", "Body")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("body")
	AdminBatchQueryUserAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("namespace")
	AdminBatchQueryUserAchievementsCmd.Flags().String("userId", "", "User id")
	_ = AdminBatchQueryUserAchievementsCmd.MarkFlagRequired("userId")
}
