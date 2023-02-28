// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievementPlatform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/achievement_platform"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetXblUserAchievementsCmd represents the GetXblUserAchievements command
var GetXblUserAchievementsCmd = &cobra.Command{
	Use:   "getXblUserAchievements",
	Short: "Get xbl user achievements",
	Long:  `Get xbl user achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementPlatformService := &platform.AchievementPlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		xboxUserId, _ := cmd.Flags().GetString("xboxUserId")
		input := &achievement_platform.GetXblUserAchievementsParams{
			Namespace:  namespace,
			UserID:     userId,
			XboxUserID: xboxUserId,
		}
		ok, errOK := achievementPlatformService.GetXblUserAchievementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetXblUserAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetXblUserAchievementsCmd.MarkFlagRequired("namespace")
	GetXblUserAchievementsCmd.Flags().String("userId", "", "User id")
	_ = GetXblUserAchievementsCmd.MarkFlagRequired("userId")
	GetXblUserAchievementsCmd.Flags().String("xboxUserId", "", "Xbox user id")
	_ = GetXblUserAchievementsCmd.MarkFlagRequired("xboxUserId")
}
