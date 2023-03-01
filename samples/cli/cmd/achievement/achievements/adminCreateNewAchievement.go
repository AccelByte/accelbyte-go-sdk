// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateNewAchievementCmd represents the AdminCreateNewAchievement command
var AdminCreateNewAchievementCmd = &cobra.Command{
	Use:   "adminCreateNewAchievement",
	Short: "Admin create new achievement",
	Long:  `Admin create new achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsAchievementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminCreateNewAchievementParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := achievementsService.AdminCreateNewAchievementShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateNewAchievementCmd.Flags().String("body", "", "Body")
	_ = AdminCreateNewAchievementCmd.MarkFlagRequired("body")
	AdminCreateNewAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateNewAchievementCmd.MarkFlagRequired("namespace")
}
