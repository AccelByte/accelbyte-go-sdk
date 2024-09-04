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

// UnlockSteamUserAchievementCmd represents the UnlockSteamUserAchievement command
var UnlockSteamUserAchievementCmd = &cobra.Command{
	Use:   "unlockSteamUserAchievement",
	Short: "Unlock steam user achievement",
	Long:  `Unlock steam user achievement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementPlatformService := &platform.AchievementPlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SteamAchievementUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &achievement_platform.UnlockSteamUserAchievementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := achievementPlatformService.UnlockSteamUserAchievementShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UnlockSteamUserAchievementCmd.Flags().String("body", "", "Body")
	_ = UnlockSteamUserAchievementCmd.MarkFlagRequired("body")
	UnlockSteamUserAchievementCmd.Flags().String("namespace", "", "Namespace")
	_ = UnlockSteamUserAchievementCmd.MarkFlagRequired("namespace")
	UnlockSteamUserAchievementCmd.Flags().String("userId", "", "User id")
	_ = UnlockSteamUserAchievementCmd.MarkFlagRequired("userId")
}
