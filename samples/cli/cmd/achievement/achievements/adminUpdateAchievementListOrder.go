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

// AdminUpdateAchievementListOrderCmd represents the AdminUpdateAchievementListOrder command
var AdminUpdateAchievementListOrderCmd = &cobra.Command{
	Use:   "adminUpdateAchievementListOrder",
	Short: "Admin update achievement list order",
	Long:  `Admin update achievement list order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsAchievementOrderUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		achievementCode, _ := cmd.Flags().GetString("achievementCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &achievements.AdminUpdateAchievementListOrderParams{
			Body:            body,
			AchievementCode: achievementCode,
			Namespace:       namespace,
		}
		errNoContent := achievementsService.AdminUpdateAchievementListOrderShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateAchievementListOrderCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateAchievementListOrderCmd.MarkFlagRequired("body")
	AdminUpdateAchievementListOrderCmd.Flags().String("achievementCode", "", "Achievement code")
	_ = AdminUpdateAchievementListOrderCmd.MarkFlagRequired("achievementCode")
	AdminUpdateAchievementListOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateAchievementListOrderCmd.MarkFlagRequired("namespace")
}
