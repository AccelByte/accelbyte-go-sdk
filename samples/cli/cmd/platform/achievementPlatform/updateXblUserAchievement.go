// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievementPlatform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/achievement_platform"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateXblUserAchievementCmd represents the UpdateXblUserAchievement command
var UpdateXblUserAchievementCmd = &cobra.Command{
	Use:   "updateXblUserAchievement",
	Short: "Update xbl user achievement",
	Long:  `Update xbl user achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementPlatformService := &platform.AchievementPlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblAchievementUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &achievement_platform.UpdateXblUserAchievementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := achievementPlatformService.UpdateXblUserAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateXblUserAchievementCmd.Flags().String("body", "", "Body")
	UpdateXblUserAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateXblUserAchievementCmd.MarkFlagRequired("namespace")
	UpdateXblUserAchievementCmd.Flags().String("userId", "", "User id")
	_ = UpdateXblUserAchievementCmd.MarkFlagRequired("userId")
}
