// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package achievements

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateAchievementListOrderCmd represents the adminUpdateAchievementListOrder command
var adminUpdateAchievementListOrderCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := achievementsService.AdminUpdateAchievementListOrder(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateAchievementListOrderCmd)
	adminUpdateAchievementListOrderCmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateAchievementListOrderCmd.MarkFlagRequired("body")
	adminUpdateAchievementListOrderCmd.Flags().StringP("achievementCode", "ae", " ", "Achievement code")
	_ = adminUpdateAchievementListOrderCmd.MarkFlagRequired("achievementCode")
	adminUpdateAchievementListOrderCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateAchievementListOrderCmd.MarkFlagRequired("namespace")
}
