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

// AdminUpdateAchievementCmd represents the AdminUpdateAchievement command
var AdminUpdateAchievementCmd = &cobra.Command{
	Use:   "adminUpdateAchievement",
	Short: "Admin update achievement",
	Long:  `Admin update achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsAchievementUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminUpdateAchievementParams{
			Body:            body,
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		ok, err := achievementsService.AdminUpdateAchievementShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminUpdateAchievementCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateAchievementCmd.MarkFlagRequired("body")
	AdminUpdateAchievementCmd.Flags().StringP("achievementCode", "", "", "Achievement code")
	_ = AdminUpdateAchievementCmd.MarkFlagRequired("achievementCode")
	AdminUpdateAchievementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateAchievementCmd.MarkFlagRequired("namespace")
}
